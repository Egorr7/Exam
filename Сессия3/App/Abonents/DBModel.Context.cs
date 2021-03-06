//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Abonents
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class AbonentsEntities : DbContext
    {
        private static AbonentsEntities _context;
        public AbonentsEntities()
            : base("name=AbonentsEntities")
        {

        }
        public static AbonentsEntities GetContext()
        {
            if (_context == null)
                _context = new AbonentsEntities();

            return _context;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    
        public virtual ObjectResult<Nullable<decimal>> AddNewAbonent(Nullable<int> abonentNumber, string fIOAbonent, string adress, string telefonNumber, string numberDogovor, Nullable<System.DateTime> dateSetupTelefon, Nullable<int> numberRazgovora, Nullable<System.DateTime> dateRazgovor, Nullable<int> lengthRazgovor, Nullable<int> cityCode, string cityName, Nullable<int> tariff, Nullable<bool> payed)
        {
            var abonentNumberParameter = abonentNumber.HasValue ?
                new ObjectParameter("AbonentNumber", abonentNumber) :
                new ObjectParameter("AbonentNumber", typeof(int));
    
            var fIOAbonentParameter = fIOAbonent != null ?
                new ObjectParameter("FIOAbonent", fIOAbonent) :
                new ObjectParameter("FIOAbonent", typeof(string));
    
            var adressParameter = adress != null ?
                new ObjectParameter("Adress", adress) :
                new ObjectParameter("Adress", typeof(string));
    
            var telefonNumberParameter = telefonNumber != null ?
                new ObjectParameter("TelefonNumber", telefonNumber) :
                new ObjectParameter("TelefonNumber", typeof(string));
    
            var numberDogovorParameter = numberDogovor != null ?
                new ObjectParameter("NumberDogovor", numberDogovor) :
                new ObjectParameter("NumberDogovor", typeof(string));
    
            var dateSetupTelefonParameter = dateSetupTelefon.HasValue ?
                new ObjectParameter("DateSetupTelefon", dateSetupTelefon) :
                new ObjectParameter("DateSetupTelefon", typeof(System.DateTime));
    
            var numberRazgovoraParameter = numberRazgovora.HasValue ?
                new ObjectParameter("NumberRazgovora", numberRazgovora) :
                new ObjectParameter("NumberRazgovora", typeof(int));
    
            var dateRazgovorParameter = dateRazgovor.HasValue ?
                new ObjectParameter("DateRazgovor", dateRazgovor) :
                new ObjectParameter("DateRazgovor", typeof(System.DateTime));
    
            var lengthRazgovorParameter = lengthRazgovor.HasValue ?
                new ObjectParameter("LengthRazgovor", lengthRazgovor) :
                new ObjectParameter("LengthRazgovor", typeof(int));
    
            var cityCodeParameter = cityCode.HasValue ?
                new ObjectParameter("CityCode", cityCode) :
                new ObjectParameter("CityCode", typeof(int));
    
            var cityNameParameter = cityName != null ?
                new ObjectParameter("CityName", cityName) :
                new ObjectParameter("CityName", typeof(string));
    
            var tariffParameter = tariff.HasValue ?
                new ObjectParameter("Tariff", tariff) :
                new ObjectParameter("Tariff", typeof(int));
    
            var payedParameter = payed.HasValue ?
                new ObjectParameter("Payed", payed) :
                new ObjectParameter("Payed", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("AddNewAbonent", abonentNumberParameter, fIOAbonentParameter, adressParameter, telefonNumberParameter, numberDogovorParameter, dateSetupTelefonParameter, numberRazgovoraParameter, dateRazgovorParameter, lengthRazgovorParameter, cityCodeParameter, cityNameParameter, tariffParameter, payedParameter);
        }
    
        public virtual ObjectResult<Nullable<decimal>> DeleteAbonents(Nullable<int> abonentNumber, string fIOAbonent, string adress, string telefonNumber, string numberDogovor, Nullable<System.DateTime> dateSetupTelefon, Nullable<int> numberRazgovora, Nullable<System.DateTime> dateRazgovor, Nullable<int> lengthRazgovor, Nullable<int> cityCode, string cityName, Nullable<int> tariff, Nullable<bool> payed)
        {
            var abonentNumberParameter = abonentNumber.HasValue ?
                new ObjectParameter("AbonentNumber", abonentNumber) :
                new ObjectParameter("AbonentNumber", typeof(int));
    
            var fIOAbonentParameter = fIOAbonent != null ?
                new ObjectParameter("FIOAbonent", fIOAbonent) :
                new ObjectParameter("FIOAbonent", typeof(string));
    
            var adressParameter = adress != null ?
                new ObjectParameter("Adress", adress) :
                new ObjectParameter("Adress", typeof(string));
    
            var telefonNumberParameter = telefonNumber != null ?
                new ObjectParameter("TelefonNumber", telefonNumber) :
                new ObjectParameter("TelefonNumber", typeof(string));
    
            var numberDogovorParameter = numberDogovor != null ?
                new ObjectParameter("NumberDogovor", numberDogovor) :
                new ObjectParameter("NumberDogovor", typeof(string));
    
            var dateSetupTelefonParameter = dateSetupTelefon.HasValue ?
                new ObjectParameter("DateSetupTelefon", dateSetupTelefon) :
                new ObjectParameter("DateSetupTelefon", typeof(System.DateTime));
    
            var numberRazgovoraParameter = numberRazgovora.HasValue ?
                new ObjectParameter("NumberRazgovora", numberRazgovora) :
                new ObjectParameter("NumberRazgovora", typeof(int));
    
            var dateRazgovorParameter = dateRazgovor.HasValue ?
                new ObjectParameter("DateRazgovor", dateRazgovor) :
                new ObjectParameter("DateRazgovor", typeof(System.DateTime));
    
            var lengthRazgovorParameter = lengthRazgovor.HasValue ?
                new ObjectParameter("LengthRazgovor", lengthRazgovor) :
                new ObjectParameter("LengthRazgovor", typeof(int));
    
            var cityCodeParameter = cityCode.HasValue ?
                new ObjectParameter("CityCode", cityCode) :
                new ObjectParameter("CityCode", typeof(int));
    
            var cityNameParameter = cityName != null ?
                new ObjectParameter("CityName", cityName) :
                new ObjectParameter("CityName", typeof(string));
    
            var tariffParameter = tariff.HasValue ?
                new ObjectParameter("Tariff", tariff) :
                new ObjectParameter("Tariff", typeof(int));
    
            var payedParameter = payed.HasValue ?
                new ObjectParameter("Payed", payed) :
                new ObjectParameter("Payed", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("DeleteAbonents", abonentNumberParameter, fIOAbonentParameter, adressParameter, telefonNumberParameter, numberDogovorParameter, dateSetupTelefonParameter, numberRazgovoraParameter, dateRazgovorParameter, lengthRazgovorParameter, cityCodeParameter, cityNameParameter, tariffParameter, payedParameter);
        }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    }
}
