using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Censo
{
    public class db
    {
        public int InsertAspirtante(Censo c)
        {
            try
            {
                using (var db = new SCEntities())
                {
                    db.Censo.Add(c);
                    db.SaveChanges();
                }
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
    }
}