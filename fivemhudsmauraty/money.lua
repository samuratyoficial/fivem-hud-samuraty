--DOGE#3157--
--Have  Fun--

local cfg = {}
--
-- start wallet/bank values
cfg.open_wallet = 2500000
cfg.open_bank = 2500000
cfg.open_giftbox = 10

cfg.display_css = [[

  .div_money{
    position: absolute;
    background-color: rgba(0,0,0,0.4);
	top: 100px;
	right: 1000px;
    text-align:center;
    color: white;
    padding: 5px;
    width : 220px;
    border-radius: 20px;
    font-family: 'Lucida Consola';
    font-size: 17.5px;
    font-weight: bold;
    color: #FFFFFF;
    text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
  .div_bmoney{
    position: absolute;
    background-color: rgba(0,0,0,0.4);
	top: 100px;
    right: 700px;
    text-align:center;
    font-family: 'Lucida Consola';
    padding: 5px;
    width : 220px;
    border-radius: 20px;
    font-size: 17.5px;
    font-weight: bold;
    color: #FFFFFF;
    text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
  .div_coins{
    position: absolute;
    background-color: rgba(0,0,0,0.4);
	  top: 80px;
    right: 800px;
    text-align:center;
    font-family: 'Lucida Consola';
    padding: 5px;
    width : 220px;
    border-radius: 20px;
    font-size: 17.5px;
    font-weight: bold;
    color: #FFFFFF;
    text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
  .div_money .symbol{
    content: url('https://i.imgur.com/QeUvNg0.png');
    animation: logomove 2.1s infinite;
     float: left;
     margin-left: 5px;
  }
  
  .div_bmoney .symbol{
    content: url('https://i.imgur.com/2ONXpm8.png');
    animation: logomove 2.1s infinite;
     float: left;
     margin-left: 5px;
  }
  .div_coins .symbol{
    content: url('https://imgur.com/tX9kj2A.png');
    animation: logomove 2.1s infinite;
     float: left;
     margin-left: 5px;
  }
  
  @keyframes logomove {
    0%{opacity: 0.5;}
    50%{opacity: 1;}
    100%{opacity: 0.5;}
}

  
]]

return cfg