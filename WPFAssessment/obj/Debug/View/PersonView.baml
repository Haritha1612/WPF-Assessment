   M S B A M L   `   `   `  ����D  @IPlatoWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WPFAssessment.ViewWPFAssessment.View  5      A%clr-namespace:WPFAssessment.ViewModelWPFAssessment.ViewModel  5      A%clr-namespace:WPFAssessment.ConverterWPFAssessment.Converter  5	      #    WPFAssessment.View.PersonView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      ,local clr-namespace:WPFAssessment.View  5      1model%clr-namespace:WPFAssessment.ViewModel  5      5	converter%clr-namespace:WPFAssessment.Converter  5	        � 	Resources  5      /  )WPFAssessment.Converter.DateTimeConverter   dateConverter �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� Padding �� TextAlignment��%a  &	        '��        5   
   6&   �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $��0,0,0,1q�6!   
���   �
������ ._�5      �� $ ContentHeader��6(   #��z��6?   $ 5,5,5,0q�6`   #��z��5   (   $
 Left=�6H   
�����_�$��15(�5   ?   5      5      5      5      5       � DataContext 5      -  'WPFAssessment.ViewModel.PersonViewmodel  5   
   6"   .��5!      � 	 � RowDefinitions	 5#   
   �� 5$      $	��50* �6   �� 5%      $	��60* �6   �� 5&      $	��15* �6   �� 5'      $	��10* �6   �� 5(      $	��10* �6   .+�5,      �� $��3��6   $��12(�6=   
���<��$
��Left=�6`   ��6!   �� *	Message+6`   �� 5-   
   $��4��6   $��yTip: To add a person, Name should be unique. Also, no other validations are performed, as per the assessment requirement.��5.      $��12(�5/      
��� � �$��Right=�65   $��WrapWithOverflow=�50      �� 53      $��0��6   $��Visible=�54   M   $��15(�55      ��.  $��5q�6M   ��53   &   �� *	Persons+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� SelectedItem 54      �� *SelectedPerson+ �� Mode$ TwoWay=� �� View 56      �� 57       �� AllowsColumnReorder .  �� ColumnHeaderToolTip$ Person Information��6:   .P�58      �� $��
First Name��6Y    �� Width$	 100��6m    �� DisplayMemberBinding 6)   ��  �� Path$ 	FirstName�6m   �� 59      $��	Last Name��6X   $	 100��6k    6)   �� $ LastName�6k   �� 5:      $��Date of Birth:��5;   )   $	 100��6A    5:   )   �� $ DateOfBirth� �� 	Converter# [  5;   A   5<      .  (System.Windows.Interactivity.Interaction   Triggers 5>      /  )System.Windows.Interactivity.EventTrigger  5?         	EventName$ SelectionChanged��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5@      6  0System.Windows.Interactivity.InvokeCommandAction     Command 60   �� *OnSelectionChangedCommand+5A      5C      � 5H   
   $��1��6   $��Stretch=�6   	 5J      �� 5K      $��2* �6    �� 5L      $��2* �6    �� 5M      $��2* �6    �� 5N      $��2* �6     � ColumnDefinitions 5P      �� 5Q      $��1* �6#   �� 5R      $��1* �6#   �� 5S      $��1* �6#   �� 5T      $��1* �6#   .+�5V      �� $��First Name:��6   $��18(�6*   $��1��68   $��Center=�5W      $
��Left=�6>   �� 5X      $��
Last Name:��6   $��18(�6)   $��1��67   $��1��6G   $��Center=�5Y      $
��Left=�6>   �� 5Z      $��Date of Birth:��6   $��18(�6-   $��1��6;   $��2��6K   $��Center=�5[      $
��Left=�6>   �� 5\      $��Profession:��6   $��18(�6*   $��1��68   $��3��6I   $��Center=�5]      $
��Left=�6>   �� 5_      -   5         ��Name$ FirstNameTextBox��5_      $��18(�60   $
��Left=�5`      $��Center=�6@   $��2��5a      $��8q�6.    �� TextWrapping$
 Wrap=�69   ��5b      �� *PersonDetails.FirstName+�� 5c      -   5        $ LastNameTextBox��5c      $��18(�6/   $��1��6=   $
��Left=�5d      $��Center=�6@   $��2��5e      $��8q�6.   $
 Wrap=�69   ��5f      �� *PersonDetails.LastName+�� 5g      -   5        $ 
DoBTextBox��5g      $��18(�6*   $��2��68   $
��Left=�5h      $��Center=�6@   $��2��5i      $��8q�6.   $
 Wrap=�69   ��5j      �� *PersonDetails.DateOfBirth+# [  �� 5k      -   5        $ ProfessionTextBox��5k      $��18(�61   $��3��6?   $
��Left=�5l      $��Center=�6@   $��2��5m      $��8q�6.   $
 Wrap=�69   ��5n      �� *PersonDetails.Profession+5p      � 5q   
   $��2��6   $��Stretch=�6    5r      �� 5s      $��1* �6#   �� 5t      $��1* �6#   �� 5u      $��1* �6#   .+�5w      �� -   5         ��Name$ CreateProductButton��5w      $��15(�62   $��
Add Person��6@   $��8q�6U   $��0��6`    � ToolTip$$ Adds new Person's information.��5x   =   ��6   �� *AddNewPersonCommand+6=   �� 5y      -   5        $ UpdateProductButton��5y      $��15(�62   $��Update��6@   $��1��6Q   $��8q�6b   $0 *Updated the selected Person's information.��5z   =   ��6   �� *UpdatePersonCommand+6=   �� 5{      -   5        $ DeleteProductButton��5{      $��15(�62   $��Delete��6@   $��2��6Q   $��8q�6a   $0 *Removes the selected Person's information.��5|   =   ��6   �� *DeletePersonCommand+6=   5}      5      5�      