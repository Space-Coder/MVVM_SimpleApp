using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;
using MVVM_SimpleApp.ViewModel;

namespace MVVM_SimpleApp.Model
{
    [Serializable]
    public class User : ViewModelBase
    {
        private Guid _id;
        [XmlAttribute("ID")]
        public Guid ID
        {
            get { return _id; }
            set 
            {
                _id = value;
                OnPropertyChanged("ID");
            }
        }

        private string _name;
        [XmlElement("Name")]
        public string Name
        {
            get { return _name; }
            set 
            { 
                _name = value;
                OnPropertyChanged("Name");
            }
        }

        private string _surname;
        [XmlElement("Surname")]
        public string Surname
        {
            get { return _surname; }
            set 
            { 
                _surname = value;
                OnPropertyChanged("Surname");
            }
        }


        private int _age;
        [XmlElement("Age")]
        public int Age
        {
            get { return _age; }
            set 
            { 
                _age = value;
                OnPropertyChanged("Age");
            }
        }

        private string _role;
        [XmlElement("Role")]
        public string Role
        {
            get { return _role; }
            set { 
                _role = value;
                OnPropertyChanged("Role");
            }
        }

    }
}
