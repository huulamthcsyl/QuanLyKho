   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLyKho	QuanLyKho  5   	   ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5   	       QuanLyKho.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLyKho     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
   	   -uc$clr-namespace:QuanLyKho.UserControls  5   	   -   5          �Name$  window��5   	    � Title$ Khách hàng��5   	   $	��450��6   $	��800��6)      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    
 MainVM � DataContext# [ 5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      )   #QuanLyKho.UserControls.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5       � 5"   
   $��1��6    5#      �� 5$      $
��auto �6    60   �� 5%      $
��auto �6    60   �� 5&      6"   .+�5)      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5*      � $��0 0 0 10q�6   .+�5+      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��5,       % !MaterialDesignFloatingHintTextBox#��[ 5-      $��Center=�5.      $��5 5 15 5q�5/      ��50      �� *
UserName+�� 51      $ Tên hiển thị��52      #��[ 53      $��Center=�54      $��5 5 15 5q�55      ��56      �� *DisplayName+�� 57      $��
5 5 15 -10q�6   $ Quyền��6�    �� 
IsEditable . ��63   �� *Role+ �� SelectedItem 6P   �� *SelectedRole+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   58      59        5;      $��1��6"   $��5q�6/   .��5<      � .+�5=      �� $��Thêm��6   $��5q�6,   $��80��67   ��6B   �� *
AddCommand+6c   �� 5>      $��Sửa��6   $��5q�6+   $��80��66   ��6A   �� *EditCommand+6c   �� 5?      $
��Xoá��6   $��5q�6+   $��80��66   ��6A   �� *DeleteCommand+6e   �� 5@      $��Đổi mật khẩu��6   $��5q�64   $	��120��6?   ��6K   �� *ChangePasswordCommand+6w   5A      5B        5D      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5E      �� $
��Auto=�6   .��5F      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5G      �� 5H      .P�5I   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *ID+6c   �� 5J   "   $��Tên đăng nhập��61    6H   �� *
UserName+6t   �� 5K   "   $��Tên hiển thị��61    6G   �� *DisplayName+6v   �� 5L   "   $��Quyền��61    6@   �� *Role+6h   5M      5O      5P      5Q      5R      5S      5T      