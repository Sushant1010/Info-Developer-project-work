using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL.Entity;
using DAL;

namespace BLL
{
    public class BLLUser
    {
        InfoDBEntities _db = new InfoDBEntities();
        public int CreateUser(UserDetails ud)
        {
            tblStudent tb = new tblStudent();
            tb.Username = ud.Username;
            tb.Password = ud.Password;
            tb.Usertype = ud.Usertype;
            tb.Fullname = ud.Fullname;
            _db.tblStudents.Add(tb);
            
            int i = _db.SaveChanges();
            return i;
        }

        public int UpdateUser(UserDetails ud)
        {
            tblStudent tb = _db.tblStudents.Where(u => u.UserId == ud.UserId).FirstOrDefault();
            tb.Username = ud.Username;
            tb.Password = ud.Password;
            tb.Usertype = ud.Usertype;
            tb.Fullname = ud.Fullname;

            int i = _db.SaveChanges();
            return i;
        }
        public int DeleteUser(int userid)
        {
            tblStudent tb = _db.tblStudents.Where(u => u.UserId == userid).FirstOrDefault();

            _db.tblStudents.Remove(tb);
            int i = _db.SaveChanges();
            return i;
        }

        public List<UserDetails> GetAllUser()
        {
            List<UserDetails> lseruserdet = new List<UserDetails>();
            List<tblStudent> userlst = _db.tblStudents.ToList();
            foreach (var item in userlst)
            {
                UserDetails ud = new UserDetails();
                ud.UserId = item.UserId;
                ud.Username = item.Username;
                ud.Password = item.Password;
                ud.Usertype = item.Usertype;
                ud.Fullname = item.Fullname;
                lseruserdet.Add(ud);
            }
            return lseruserdet;
        }
    }
}
