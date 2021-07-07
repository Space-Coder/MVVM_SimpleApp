using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Xml.Serialization;
using MVVM_SimpleApp.Model;


namespace MVVM_SimpleApp.ViewModel
{
    class UsersViewModel : ViewModelBase
    {
        public ObservableCollection<User> Users { get; set; }
        private XmlRootAttribute rootAttribute = new XmlRootAttribute("Users");
        public UsersViewModel()
        {
            if (File.Exists("users.xml"))
            {
                LoadFile();
            }
        }

        private User _selectedUser;

        public User SelectedUser
        {
            get { return _selectedUser; }
            set 
            { 
                _selectedUser = value;
                OnPropertyChanged("SelectedUser");
            }
        }
        private RelayCommand saveCommand;
        public RelayCommand SaveCommand
        {
            get
            {
                return saveCommand ??
                    (saveCommand = new RelayCommand(obj =>
                    {
                        SaveFile();
                    }));
            }
        }

        private RelayCommand addUser;
        public RelayCommand AddUser
        {
            get
            {
                return addUser ??
                    (addUser = new RelayCommand(obj =>
                    {
                        User newuser = new User() { ID = Guid.NewGuid() };
                        Users.Insert(Users.Count, newuser);
                        SelectedUser = newuser;
                    }));
            }
        }

        private void LoadFile()
        {
            
            XmlSerializer xmlForamtter = new XmlSerializer(typeof(ObservableCollection<User>), rootAttribute);
            using (FileStream fs = new FileStream("users.xml" , FileMode.OpenOrCreate))
            {
                Users = (ObservableCollection<User>)xmlForamtter.Deserialize(fs);
            }
        }

        private void SaveFile()
        {
            XmlSerializer xmlFormatter = new XmlSerializer(typeof(ObservableCollection<User>), rootAttribute);
            using (FileStream fs = new FileStream("users.xml", FileMode.OpenOrCreate))
            {
                xmlFormatter.Serialize(fs, Users);
            }
        }
    }
}
