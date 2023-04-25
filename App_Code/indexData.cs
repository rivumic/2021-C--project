using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Xml.Serialization;

public class PurchaseCollection
{
    public PurchaseCollection()
    {}
    public PurchaseCollection(List<Purchase> purchases)
    {
        this.Purchases = purchases;
    }

    public List<Purchase> Purchases { get; set; }
}
public class Purchase
{
    public int id { get; set; }
    public string fullName { get; set; }
    public string emailAddress { get; set; }
    public string productname { get; set; }
    public int unitprice { get; set; }
    public int quantity { get; set; }

    public Purchase()
    {}
    public Purchase(int id,string fullName, string email, string product, int unitPrice, int quant)
    {
        this.id = id;
        this.fullName = fullName;
        this.emailAddress = email;
        this.productname = product;
        this.unitprice = unitPrice;
        this.quantity = quant;
    }
    
    
}


public class DataSource
{
    static string file = HttpContext.Current.Server.MapPath("data/GoodGumsXML.xml");

    public DataSource()
    {}

    public static List<Purchase> readData()
    {
        PurchaseCollection recentPurchases;

        XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
        FileStream fileStream = new FileStream(file, FileMode.Open);

        recentPurchases = (PurchaseCollection) xmlSerializer.Deserialize(fileStream);

        fileStream.Close();

        return recentPurchases.Purchases;
    }
    public static void writeData(List<Purchase> purchases)
    {
        PurchaseCollection newData = new PurchaseCollection(purchases);

        XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
        StreamWriter streamWriter = new StreamWriter(file);
        xmlSerializer.Serialize(streamWriter, newData);
        streamWriter.Close();
    }
    public static void addRecord(string fullName, string emailAddress, string productname, int unitprice, int quantity)
    {
        List<Purchase> purchases = readData();
        int id = 1 + purchases.Count;
        Purchase newPurchase = new Purchase(id, fullName, emailAddress, productname, unitprice, quantity);
        purchases.Add(newPurchase);

        writeData(purchases);
    }
}