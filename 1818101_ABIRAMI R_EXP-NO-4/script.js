function validate(){
    validateName();
    validateMail();}
function validateName() 
{
    var name = document.getElementById("name").value;
    var space = 0;
    for(var i=0;i<name.length;i++)
    {
        if(name[i]==='')
        {
            space++;
        }

        if(name.charCodeAt(i)<65 || name.charCodeAt(i)>122 || space>2)
        {
            alert("Only alphabets and 2 spaces allowed in name field");
            break;
        } 
    } 
}
function validateDate()
{
        var flag=true; var dt; var month; var year;
        var date=document.getElementById("dob").value;
         dt=parseInt(date[0] + date[1]);
         month=parseInt(date[3]+date[4]);
         year=parseInt(date[6]+date[7]+date[8]+date[9]);
        if(year>2020 || year<1800)
        {
            alert("Year Invalid in date of birth");
           flag=false;
        }
        else if(month>12)
        {
            alert("Month invalid in date of birth")
            flag=false;
        }
        else if((month==4 ||month==6||month==9||month==11)&&dt>30)
        {
                alert("date Invalid in date of birth")
                flag=false;
        }
        else if(month==2) 
        {
            if(year%4==0 || year%100==0) 
            {
                if(dt>29)
                {
                        alert("date Invalid in date of birth");
                        flag=false;
                } 
            }
            else
            {
                    if(dt>28)
                    {
                        alert("date Invalid in date of birth");
                        flag=false;
                    }
            }
        }
        else if(dt>31)
        {
                alert("Date Invalid in date of birth");
                flag=false;
        }
        agee=document.getElementById("age");
        if(flag==true)
        {
                var today=new Date();
                var mn= today.getMonth();
                var age=0;
                mn+=1;
                var da=today.getDate();
                if(mn>month)
                age=2020-year;
                if(mn<month)
                    age=2020-year-1;
                else if(month==mn)
                {
                    if(da>dt)
                        age=2020-year-1
                    else
                        age=2020-year;
                }
                agee.textContent=age;
        }
        else
        {
                agee.textContent="Invalid date of birth, cannot calculate..." 
        } 
}   
function validateMail()
{
            value=document.getElementById("mail").value;
            if (value.indexOf('@')<1) 
            {
                alert("Mail is Invalid");
            } 
            else 
            {
                var parts = value.split('@');
                var domain = parts[1];
                if(parts[0].charCodeAt(0)<65 ||  parts[0].charCodeAt(0)>122)
                    alert("mail invalid");
                if (domain.indexOf('.') <2) 
                {
                    alert("Mail is Invalid");
                } 
                else 
                {
                    var domainParts = domain.split('.');
                    var ext = domainParts[1];
                    if (ext.length > 4 || ext.length < 2) 
                    {
                        alert("Mail is Invalid");
                    }
                }
            }
}
           
