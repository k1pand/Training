   M S B A M L   `   `   `  ����C  ?Training, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Training.WindowsTraining.Windows  5   	       Training.Windows.Main   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:Training.Windows     5   	   -   5          � Title$  Главне окно��5   	   $	��450��6   $	��800��6*    � WindowStartupLocation$ CenterScreen=�66    � 	Resources 5
       �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value	 �� 
TargetType��%�  '��       �� 5   
   " ��6   .�5      ��  � �� �#FFE9F96+   �� 5       �@�Cursor$
 Hand��6'    5      P� 5       �@J�IsMouseOver . . �5      ��  � �� 5      �� 5      "	 ��6.   .R�5   "   �� $��75��6)   $��21��5   )   #��z��5   )   ._�5   &   �� $��Center=�67   $��Center=�5   7   5   #   5      5      �� 5       � �� �#B175EE63   5      5      5       .��5"      � .+�5#   
   �� $��Visible=�6   .��5$      � -   5        
 �Name$

 list��5$      $��Stretch=�6&   $��Stretch=�6D   $	��792��5%      $��0,51,0,0q�6$   5&      �� 5'   
   -   5         ��Name$ Search��5'      $
��Left=�6"   $��23��6=   $��	65,10,0,0q�6I    �� TextWrapping$
 Wrap=�6\   $��TextBox��6p   $	��Top=�6   $	��120��6�   �� 5(   
   -   5         ��Name$
 Sort��5(      $
��Left=�6!   $��
220,10,0,0q�6<   $	��Top=�6P   $	��120��6h   �� 5)   
   -   5        $ Filtr��5)      $
��Left=�6"   $��
355,13,0,0q�6=   $	��Top=�6Q   $	��120��6i   �� 5*   
   -   5        $��Переход��5*      $
��Left=�5+      $	��Top=�5,      $��75��5-      $��
663,10,0,0q�5.      5/      50      51      