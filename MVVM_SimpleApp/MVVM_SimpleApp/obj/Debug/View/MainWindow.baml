   M S B A M L   `   `   `  ����I  EMVVM_SimpleApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MVVM_SimpleApp.ViewMVVM_SimpleApp.View  5      $    MVVM_SimpleApp.View.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:MVVM_SimpleApp.View     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f8metro,http://metro.mahapps.com/winfx/xaml/controls  5        � Title$  Simple MVVM Application��5	      $	��800��5
      $	��522��5      (  "MahApps.Metro.Controls.MetroWindow   	GlowBrush �#2196F3   TitleCharacterCasing$ Normal=�5         DefaultColorForeground   TitleForeground# �   5        DefaultColor   WindowTitleBrush# �  5      .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  $��	253,0,0,0q�5         
IsReadOnly . ��5      �� *Users+ �� SelectedItem 5      �� *SelectedUser+� 5   
   $	��253��5      $
��Left=�5       � DataContext 5      �� *SelectedUser+.+�5      �� $��26��5      $��
20,75,20,0q�5      $	��Top=�5      $��Center=�5       �� 
IsReadOnly .   DefaultTextBox#���  5!      	 �� TextWrapping$
	 Wrap=�5#      ��5"      �� 
 �� Path$
 ID�5#      �� 5$      $��	20,49,0,0q�5%      $
��Left=�5&      $	��Top=�5'      $��ID��5(      
�������5)      �� 5*      $��26��5+      $��20,138,20,0q�5,      $	��Top=�5-      $��Center=�5.      #���  5/      $
	 Wrap=�51      ��50      �� $

 Name� �� UpdateSourceTrigger$ PropertyChanged=�51      �� 52      $��
20,112,0,0q�53      $
��Left=�54      $	��Top=�55      $��Name ��56      
�������57      �� 58      $��26��59      $��20,201,20,0q�5:      $	��Top=�5;      $��Center=�5<      #���  5=      $
	 Wrap=�5?      ��5>      �� $
 Surname�$ PropertyChanged=�5?      �� 5@      $��
20,175,0,0q�5A      $
��Left=�5B      $	��Top=�5C      $��Surname��5D      
�������5E      �� 5F      $��26��5G      $��20,265,20,0q�5H      $	��Top=�5I      $��Center=�5J      #���  5K      $
	 Wrap=�5M      ��5L      �� $	
 Age�$ PropertyChanged=�5M      �� 5N      $��
20,239,0,0q�5O      $
��Left=�5P      $	��Top=�5Q      $	��Age��5R      
�������5S      �� 5T      $	��213��5U      $��26��5V      $��
0,330,20,0q�5W      $��Right=�5X      $	��Top=�5Y      $��Center=�5Z      #���  5[      $
	 Wrap=�5]      ��5\      �� $

 Role�$ PropertyChanged=�5]      �� 5^      $��
20,304,0,0q�5_      $
��Left=�5`      $	��Top=�5a      $
��Role��5b      
�������5c      �� 5d      $	��Top=�5e      $��Center=�5f      $
��Edit��5g      $��26(�5h      $
��Bold"�5i      5j      �� 5k   
   $	��211��5l      $��25��5m      $��
20,419,0,0q�5n      $
��Left=�5o      $	��Top=�5p      $
��Save��5r        OutlineButton#���  5s      ��5q      �� *SaveCommand+5s      �� 5t   
   $	��211��5u      $��25��5v      $��
20,379,0,0q�5w      $
��Left=�5x      $	��Top=�5y      $	��Add��5{      #���  5|      ��5z      �� *	AddUser+5|      5}      5~      