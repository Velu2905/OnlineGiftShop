var additemid=0;
function addtocart(item){
    additemid+=1;
    var selecteditem=document.createElement('div');
    selecteditem.classList.add('cartimg');
    selecteditem.setAttribute('id',additemid);
    var img=document.createElement('img');
    img.setAttribute('src',item.children[0].currentsrc);
    var title=document.createElement('div');
    title.innerText=item.children[1].innerText;

    var titlePrice = 0;//document.createElement('div');
    titlePrice = parseInt(item.children[2].innerText);
    //titlePrice.innerText=item.children[2].innerText;
    // title.append(titlePrice);

    var label = document.createElement('div');
    label.innerText=item.children[3].children[0].innerText;
    var select=document.createElement('span');
    select.innerText=item.children[3].children[1].value;
    label.append(select);

    var labelQty = document.createElement('div');
    labelQty.innerText=item.children[4].children[0].innerText;
    var selectQty=document.createElement('span');
    selectQty.innerText=item.children[4].children[1].value;
    var flagQty = parseInt(item.children[4].children[1].value);
    labelQty.append(selectQty);

    var totalPromt = document.createElement('div');
    totalPromt = "Total Price : ";
    var total = 0;
    total = titlePrice * parseInt(flagQty);

    var delbtn=document.createElement('button');
    delbtn.innerText='Delete';
    delbtn.setAttribute('onclick','del('+additemid+')');
    var cartitems=document.getElementById('title');
    selecteditem.append(img);
    selecteditem.append(title);
    selecteditem.append(label);
    selecteditem.append(labelQty);
    selecteditem.append(totalPromt);
    selecteditem.append(total);
    selecteditem.append(delbtn);
    cartitems.append(selecteditem);

}
function del (item){
    document.getElementById(item).remove();
}