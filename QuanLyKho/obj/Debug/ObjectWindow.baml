   M S B A M L   `   `   `  ����D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QuanLyKho	QuanLyKho  5   	   ?$clr-namespace:QuanLyKho.UserControlsQuanLyKho.UserControls  5   	       QuanLyKho.ObjectWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QuanLyKho     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
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
��auto �6    60   �� 5&      6"   .+�5)      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5*      � $��0 0 0 10q�6   .+�5+      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Tên��5,       % !MaterialDesignFloatingHintTextBox#��[ 5-      $��Center=�5.      $��5 5 15 5q�5/      ��50      �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=��� 51      $��
5 5 15 -10q�6   $ 
Đơn vị��6�    �� 
IsEditable . ��63   �� *Unit+ �� SelectedItem 6P   �� *SelectedUnit+ �� Mode$ TwoWay=�$ PropertyChanged=�6�   �� 52      $��
5 5 15 -10q�6   $ Nhà cung cấp��6�    . ��63   �� *	Suplier+ 6S   �� *SelectedUnit+$ TwoWay=�$ PropertyChanged=�6�   �� 53      $ QR Code��54      #��[ 55      $��Center=�56      $��5 5 15 5q�57      ��58      �� *QRCode+$ PropertyChanged=��� 59      $ Bar Code��5:      #��[ 5;      $��Center=�5<      $��5 5 15 5q�5=      ��5>      �� *	BarCode+$ PropertyChanged=�5?      5@        5B      $��1��6"   $��5q�6/   .��5C      � .+�5D      �� $��Thêm��6   $��5q�6,   $��80��67   ��6B   �� *
AddCommand+6c   �� 5E      $��Sửa��6   $��5q�6+   $��80��66   ��6A   �� *EditCommand+6c   �� 5F      $
��Xoá��6   $��5q�6+   $��80��66   ��6A   �� *DeleteCommand+6e   5G      5H        5J      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5K      �� $
��Auto=�6   .��5L      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5M      �� 5N      .P�5O   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *ID+6c   �� 5P   "   $
��Tên��61    6>   �� *DisplayName+6m   �� 5Q   "   $��Đơn vị đo��61    6D   �� *Unit.DisplayName+6x   �� 5R   "   $��Nhà cung cấp��61    6G   �� *Suplier.DisplayName+6~   �� 5S   "   $��QR Code��61    6B   �� *QRCode+6l   �� 5T   "   $��Bar Code��61    6C   �� *	BarCode+6n   5U      5W      5X      5Y      5Z      5[      5\      