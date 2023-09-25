import 'package:flutter/material.dart';
import 'package:my_firt_app/src/models/productos.dart';

class ProductosScreen extends StatelessWidget {
  ProductosScreen({super.key});

  // 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBISERIRDxEPEREPDxERDxEPDxIPEBEPGBMZGRgTGBgbIS0kGx0rIRkYJTclKi4xNDQ1GiM6PzozPi0zNDEBCwsLEA8QGhISHTMhISEzMzMzMTMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMTMzMzMxMTExMzMxM//AABEIAPkAygMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAgMEBQcIAQb/xABHEAABAwIABwoKCQQBBQAAAAABAAIDBBEFBhIhMbLREzI0UVNzdIGTswcUIjVBYXFykZIVIzNSVKGiscFCYoLCJENj4fDx/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAQBAwUCBv/EADERAAIBAgMECQMFAQAAAAAAAAABAgMRBBIhBTFBgRNCUWFxocHR8DKRsSIzUuHxov/aAAwDAQACEQMRAD8A2ZCEIAEIQgAQhRq6qbDFLM/eQxvkfbTksaXH8ggCShc84ZxjqquRz5ppA1xJZCx7mxRt9DQ0Zif7jnKq/GHco/5nbVNgOmkLmXxh/wB9/aO2rzxl/KP7R21AHTaFzJ40/lH/ADu2pPjL/vv+d21QB06hcx+NP5R/zu2pJqn8o/53bVIHTyFzE2qfcXkktfPZ7r2+K8dVvvmkktfNeR17fFQB08hcweNv5STtHbUk1j+Vk7R+1TYi6OoULl41b+Vk7R21eeOy8rJ2j9qLE3OokLlzxyXlZO0ftXnjkvKydq/apygdSIXLfjknKy9q/arrFzG6roZmvE0skOUN2gkkc9j2f1ZIcTkOtoItnAvcZlFgOikJuOQOa1zTcOAc08YIuE4oAEIQgAQhCABUuOF/o2uta/iVRa+i+5OV0qbHDzdW9Dn7soAwGijD5YmOvkvljY62Y5LngH91r7MHQNAa2CENaLAbkzMPgsjwXwiDpMPeNWzJikr3OJkbxGHkYeyZsR4jDyMPZM2J8vA0kD2kIDwdBB9hCsuiLStewx4jDyMPZM2I8Rh5GHsmbFJQpIuRvEIeRh7JmxHiEPIw9kzYpKEARvEIeRh7JmxVuHmRRwnJihDpDubSImXFx5TtHFfrIV2vnsYgXSxt9AYXdZcR/CqrSywbG8DTVSvFPdv+2v5sUtNRtzfVx9bArOGhj5OP5G7EqmhVjDEsuTsejmxqKgi5KLs27FMjwfDyMPZM2J+GNS2MSdTMKzkiKzBsPIw9kzYlfR0HIU/Ys2KaGpLgkZ3RRoVk+CqaQFj4IC14IcNyYPgQMx9aw+oZkue0aGue0X4gSFvd86wWt+0k99+sVt7NbeGjftfz8mfilapyXqdO4K4PBzEWoFMUPBXB4OYi1ApibFwQhCABCEIAFS44ebq7oc/duV0qXHDzdW9Dn7tyAMCwebTQkaRNER7RI1aiZ3v0uJ9WgfBZZQ/bRc9HrBagxEtTV2bGOWUmtUx5oS8lDAnAFS4IfcmIDnN3riP2+CcZW2zPHW3+QghNPZdcqc4fS+XApnRpVfrWvbuf3+LuLBjgRdpBB0EZwlKmZI6M3bo9LTo/++tWlNO17cpvsIOlp4inaGIVTTc+z2+aGRisHKjrvi+Po/ln46Dqp8MxeUx/GMg9RuP3KuE1UQh7S06dLTxOCsqwzQaRxhKypVoze7jzVirp2KwiYo0LbZjmI0qbGsto3qkrj8bVIYE0xPNKVqCsmKsmnpwuUaV98wSjg5PKlds5Wmr0Q0zST67BYLXHy5Pfk1it8aNCwOs38nOSaxXoadBUaUKfZ+d78zLqVOknKXadPYK4PBzEWoFMVbgCQvo6V5sC+lgcQNFzG05lZKDkEIQgAQhCABUuOHm6t6HP3bldKmxv83VvQ6junIA5+oT9dFz0esFqUayuh+2i56PWC1SNdmvs36JeK/BIangmWJ4LmSG2CCF7Ze2VEonNyLKxRGSOiflDR/UONvF7VZuaos8d1Q007rei2LUk4y1T3lnFIHNDmm4cAQfUlqrwVLkl0Z0Z3N/kfz8VaLWpVOkipfLnm8RRdGo4dm7w4fO1DckQdn0Hj2pLQRp/8J5C5qUIz13Mso4udNZd67Pb23A16c3RNWXqUeAb63kXvHR/j5/0KLyUlCEzRwtOlrHf2ilWvKpo93YA0rAqw/WSeqR+sVvo0rAK37ST35NYrqtwOInTuAYdzpKVl75FLAy9rXyY2i6sFBwO8OpqdzTcOp4i0jQQWCxU5UHQIQhAAhCEACpccfNtd0Oo7pyulS44eba7oVR3bkAc+0P2sXPR6wWowuWWUR+ti56PWC06FysitDV2e7Ql4lgxPNCjxOUlpQ0NyYsBKDUBLC4cSu4gtTMjFJISHhVygTGRVTNLXB7d803CmxYTjIGUS0+kEHMfaAkTsuFD3AJfpp0b5ba9v+o7q4eniEnO91xX+MsxhCL736XD+E42pYdD2fG37qn3H1L0Qqt7UqrfFP7+7F3sqi90peXsi8C9VNGHN3pI6/4UyGrIzOF/WNivo7Woydqiy+a+/wDVhOts2pHWDzeT+cyahJa4EXBuEpaiaaujOas7MG6VgFX9rJzkmsVv7dPWsArPtZOck1iqq3A7idM4tcBo+h03dNVoqzFrgNH0Om7pqs1QdAhCEACEIQAKlxx8213Qqju3K6VLjj5truhVHduQBzzRn62PnY9YLSoXrNKQ/Wx86zXC0SF6vpq6ZoYOVoS8S2iepbHKthepTJFLiXuZOYU4CorHp5r1zlOM47dDgkgpQXDRZGQ09iZLFMLUy8JOvEujMZ3Ne7mnAEsBZtSB1nGdzRuakAL3JWdViGciNuw3b1j0FS43hwuOscSQ9iYBLHXGj+ocYV2ztpSw08k/23/z3r1XHx3r4nDKsrr6l593t9txNbpXP1abSSc5JrFdAMN7EaDay5+rt/L78msV62s9xixOocCxhlLTMF7NpoWi+mwY0BT1DwVweDmItQKYqDoEIQgAQhCABUuOPm2u6FUd25XSpccfNtd0Ko7tyAOdaY/WR843WC+7hmXw+D4w+eFhvZ88TDbTZ0jQbfFffYQwHNCS5gMsY9LB5bR/c3+R+Sbw6TTuW06qgmiRFKpsci+dgqlZwVF0w6diemuW7JFIjeqxkilRuVTgCqk9rk81RI3KQ1yqlEvhMeJzJlyXlpsparG41F6AE41JCU0LOqQByFAJVkNCVZZ9WBGYQQmJWKUQm3tWXVgXQkM0T/6T6Dfqv/78Vgtdv5ffk1it3ZmkafYD7DmWEV2/l9+TWK9Nsuu6mFjF74PLy0t5acjNxtPLVbXW19/fmdS4L4PBzEWoFLUTBfB4OYi1ApafFQQhCABCEIAS5wAJOYAXJ9Sy7GLHl74aunMbHNkppW5THG7GvZkg59JBcL+wr73Gap3Kjnf6TGWD2v8AJH7rFMHUwnkrHkXbT4NrJb6RlbmWN/N9+pSgKDBXCabpVP3rVuSwzBPCabpVP3rVuavpcTiRCrcFwzZ5Ixlffb5D/iNPXdfMYYpG0bo/rMpsrnNY1+Z4sLk5sxGjPm0hfYvkDWlziGta0uc4mwa0C5JWP4w4ZdV1LpM4Y3yIWm/kxg5jbjOk+23oTVNu/cVyaR9lTVIOgqxhevi8GVBzZ19JSzq6cTiMmi7Y9SGuVbHIpLHpaURulUJYclBMtKeYlqi0HozHGhONCSwJ1gSFWJOY9aEsNQ0JYCz6sSLiclNvan7JDgs2rEuhIr5m51gtbv5Pfk1it/nCwCs30nvv1itDYunSLw9SrHO6g/H0OpsF8Hg5iLUClqJgvg8HMRagUtbZnghCEACEIQB8V4T63c6RrL2Mjy7/ABa237uHwXx2JlHbBOGagjf00kLf8IXPdrt+Cm+FqqypWxgi0cbAQfvOJcfyyFb4JotyxamvvpqGrnd6xI1zm/oyVIGP4K4TTdKp+9at1KwjBJ/5NN0qn71q3SSQNa5zjZrGlzidAaBclX0uJxI+L8ImGMiNtIw+VMMuaxziIHyW/wCRB6m+tZ/Cy5UrCNW6pnknff615IB/pYMzG9TQAn6aBaFOFkKSqa3J2D49CvqYKtpI7K2gCsZXnuT4SpbCokIUuNUyRbCZLiUlgUaMKUwJOqjQpTuh1oTzQm2J1qz6iGExTQlheNSkjUidJni8cEtIes+rEtiQ6lc/Vm+k99+sVvtW7QOOwWBVu/l9+TWKd2TC3SPw9TjG7oc/Q6mwXweDmItQKWoeCuDwcxFqBTFriAIQhAAhCiYTqdyglk5OJ7h7Q02HxsgDE8dqh1RVvazO6aoMcfEfKyGf6rV8Z6cR4Jq4272PB8rG+62EgfsstxYp/GMMUzDnEbzM71CNpcD8wYOtaxjn5truhVHduUsDnTBXCabpVP3rFquPVZudFI0Gzqh7YR7HXL/0tcOtZTgnhNN0qn71i0DwkS3NLH6LzSH2jJaP3cmKCu7FNd2i2fG08ataeNRKditadi1tyMlzuSYGqfEFGiCmRBLTkdRZLiUyIKJEFNjCqlMvgSYwpTFGjCksSk5j1LQdanWppqdalJjcWONSklq9Sky5HqbeUslR535kjUQxAgTvvJGON7f3WE12/l9+TWK3Au+tYf72/mbLD67fy+/JrFaOz4pUn4+iF8a/1R8PVnUuC+DwcxFqBS1EwXweDmItQKWnRMEIQgAXzGP1VudE5t88r2M6h5R1fzX06zjwqVttyiB3rHvP+RsNU/FSgK7wR0uXVVlSRmjjZE0+uR5c74Bjfivvsc/Ntd0Ko7tyofBPRbng7dCM9TUSSZ9OSLRjq8gnrV9jl5truhVHduQwOc8FH/k03SqfvWL7fwgm9VCPQKe/WZHbAvh8E8JpulU3esX3/hBZaanf96ORvyuB/wBkzhfqFsX+2z5+marOAKvplZwhaM5GPElxBS4go0QU2IJWUi2JJiCmRhRowpcYS85DMCSwJ9qZjTrEu2OwHmpxqbanAqJDMRwL1JC9ulpl8TxxUSc3Ul5TBak5jUCtnYbgjSCCPaCsOrT5cnrfJrFb++O6wGt38nvv1inMD1l4FGM3R5+h1Lgvg8HMRagUtRMF8Hg5iLUClp8SBCEIAFifhLrsuqmsbhjhG0e4ACPmyls80gY1znaGNc53sAuVhUcZq8J00bs+61THyem7Q7Lf+kOUoDZ8XqHxejpoDpip42O9bw0ZR6zcpjHLzbXdCqO7crpUuOXm2u6FUd25QBzjgnhNN0qm71i1PH2myqdkg/6MwyvUx4LT+rIWWYK4TS9Lpu9YtxwhSiaKSJ2iRjm34j6HdRsepMUHa5VWjmi49pmVJ6FaQhVsEbmOLHizmuLXDicDYhWdOE7Iwok2EKdEFEhap0TVRIviSIwpcYTEYUpgVMkNQHWp0JtqcaqZIbgOtTgTTU4CqJDMRYXqQChzkrUGII8eUkLwuQClWhuKPSFz1W7+X35NYroYLnit38vvyaxTmDX1chbF9XmdTYL4PBzEWoFLUTBfB4OYi1ApadEgQhCAKPHCq3OhnN7F7BGP8jY/ldZv4MabdsKSTHO2mp3kHikeQxv6ctfU+FKsyYIor797nn2NbYax+Ch+ByjtTVNSRnqKgMaeOONtx+p7h1KeAGjqlxy8213Qqju3K6VLjl5truhVHduUAc4YI4VS9Lp++Yt7WB4I4VS9Lp++at9TFHcziR8hjTg3JeKlo8l5DZbeiTQ13Xo9o9ar4Avu5Y2va5jwHNcCHA6CCvk6vBzoH2zmNx8h/GOI+tNRd9DMxNG0s63MXC1TogokIU2NDiVxJDApDFHaU80qqUS+I+1LamWuTrSqZRG6Y6ClgpsFe5SWmh2CHLpt714Xph70pUHacR3KSmuUZr061yXaGUh9pXPVbv5ffk1iug2Fc+Vu/l9+TWKZwqtm5CWN6vM6mwXweDmItQKWoeCuDwcxFqBTE4IghCEAY/4Va3KqXMBzRRsZ1kFx1/yX32IVDuGDKSO1i6ESuvpypCZCOrKt1LI8Y3msrRG0m9VVBjSNIa+TJb8AR8FvcbA1oa0WDQGtHEALAKWAtUuOXm2u6FUd25XSpccvNtd0Ko7tygDm/BHCqXpdP3zVvqwLBHCqXpdP3zVvqvo7mcSPEiaJr2lrwHNOkH90tCuOSiqMHuiztu5nH/U327Ulj1fqLPQsdnHknjbo6wrFPtFZ4fjH7Fe2RPNkSZKGRuizx6jY/Apkh7d81w9rSunZnGRreiYx6da9QGyJ1siplEvgyeHoL1FbIh0iWnE0qWo8+RR3PTb5E0ZEjVRp0okpr0+xyhMcpUZSzL8uhLj9C5+rd/LzkmsV0DENC5+rd/L78msUzhutyM3G9XmdTYL4PBzEWoFLUPBXB4OYi1ApiaEAVdh+p3KlnkvYticGn+9wyW/mQrFfLeESbIwe/wDvkjafZlZX+oQBm+I1Lu+GYb520zJJ3D3W5Lf1PYepbisw8D2DifG614+0e2niJGlrfKeR6iSwe1hWnqWAKjx0v9GV9tPiNRa+i+5OV4ouEKRs8MsEl8ieKSJ9tOQ9pabdRUAcuUEojmhkdfJjnie6wuclj2uNh7AtyjwtTPaHMqaYtcLg7szOPisfw9ixWUUjo54ZC1pIbMxjnwyN9Dw4Cwv905wqjcH8m/s3bF3CeUhq5vX0lT/iKft49qPpKn/EU/bx7Vg24P5N/wAjtiNwfyb/AJHbF303cRlN5+kqf8RT9vHtXn0lT/iKft49qwfcH8m/5HbEbg77j/kdsR03cGU3j6Sp/wART9vHtXv0lT/iKft49qwbcH8m/wCR2xG4P5N/yO2I6buDKbwcI0/L03bR7UfSFNy9P20e1YPuD+Tf8jtiNwfyb/kdsR03cRkN4+kaf8RT9tHtXjq+mOmemPtmjP8AKwjcH8m/5HbEbg/k3/I7Yjpu4nKbXUyUxF2VFODxGdmSfzzKs8eiBsZYbj/ut2rJ9wf9x/yO2LzcHcm/5HbFRUipcLDlHFzgrP8AUa+zCEPLQ9q3apcOEYOXg7Zm1YruDuTf8jtiNwdyb/kdsVDw6fEve0X/AB8/6N0dhmlY0vfUwBrBc/WsJt6gDcn1BYXUvynPcMwe57hfSASTnRuD+Tf2btiv8WMUKuvmYwQyx05cN3nex0bGx38rJLrZbiLgAXzkXsFZTpqApWrdJbS1jojBXB4OYi1ApaQxgaA1osGgADiAFgEtWFIKnxnwR47Svp8rIL3MId92zgSfhdXCEAQcE4OjpYI6eAZMcLclt87idJc4+kkkknjKnIQgAQhCABCEIAEIQgAQhCABCEIAEIQgAQhCABCEIAEIQgAQhCABCEIA/9k='),
  final List<Productos> productos = [
    Productos(
        producto: 'Tablet',
        stock: 0,
        imagen:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5mS3pM3GcR6SjFZ-_crOlmN65lUUtGMOoPg&usqp=CAU'),
    Productos(
        producto: 'Celular',
        stock: 20,
        imagen:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoGS6kAIFTKZZCvANNp1m4lAf4wf8XzvApbw&usqp=CAU'),
    Productos(
        producto: 'Laptop',
        stock: 200,
        imagen:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkVYyDHE6EcVaJWcs1cWq-mbsB12marx2TLg&usqp=CAU'),
    Productos(
        producto: 'Cargador',
        stock: 1,
        imagen:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNpP8ZgL6cqzC6XdV20MMnWoOGP-FIyC-m8A&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de contactos')),
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(productos[index].imagen),
            ),
            title: Text('Productos: ${productos[index].producto}'),
            subtitle: Text('Stock:${productos[index].stock.toString()}'),
            // tileColor: Colors.teal,
            selectedColor: Colors.red,
            trailing: const Icon(Icons.arrow_right),
            hoverColor: Colors.red,
            tileColor:
                productos[index].stock > 0 ? Colors.transparent : Colors.red,
          );
        },
      ),
    );
  }
}
