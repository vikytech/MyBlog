IO.read('i').lines.drop(1).each_slice(2){
    |p,t|x,y,h=p.split;
  x,y,h=[x.to_i,y.to_i,h.to_sym];
  z={N:[->{y+=1},:W,:E],E:[->{x+=1},:N,:S],S:[->{y-=1},:E,:W],W:[->{x-=1},:S,:N]};
t.strip.split(//).map{|c|
  if c=='M';
    z[h][0].call;
  elsif c=='L';
    h=z[h][1];else;h=z[h][2];
  end
};
puts"#{x} #{y} #{h}"
}