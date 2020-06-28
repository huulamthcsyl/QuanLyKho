using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
    public class ControlBarViewModel : BaseViewModel
    {
        #region Commands
        public ICommand CloseWindowCommand { get; set; }
        public ICommand MaximizedWindowCommand { get; set; }
        public ICommand MinimizedWindowCommand { get; set; }
        public ICommand MouseMoveWindowCommand { get; set; }
        #endregion

        public ControlBarViewModel()
        {
            CloseWindowCommand = new RelayCommand<UserControl>(p => { return p != null ; }, p => { var window = Window.GetWindow(p); window.Close(); });
            MaximizedWindowCommand = new RelayCommand<UserControl>(p => { return p != null; }, p => { var window = Window.GetWindow(p); if (window.WindowState != WindowState.Maximized) window.WindowState = WindowState.Maximized; else window.WindowState = WindowState.Normal; });
            MinimizedWindowCommand = new RelayCommand<UserControl>(p => { return p != null; }, p => { var window = Window.GetWindow(p); window.WindowState = WindowState.Minimized; });
            MouseMoveWindowCommand = new RelayCommand<UserControl>(p => { return p != null; }, p => { var window = Window.GetWindow(p); window.DragMove(); });
        }
    }
}
