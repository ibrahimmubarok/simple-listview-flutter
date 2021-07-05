class FoodModel {
  int id;
  String name;
  String deskripsi;
  String imgUrl;

  FoodModel({
    required this.id,
    required this.name,
    required this.deskripsi,
    required this.imgUrl
  });
}

var foodList = [
  FoodModel(
      id: 1,
      name: "Popcorn",
      deskripsi: "Jagung kering bisa digunakan untuk membuat popcorn, marning, ataupun tepung. Namun jenis jagung yang digunakan berbeda. Untuk popcorn kamu bisa menggunakan jagung berondong atau jagung manis.",
      imgUrl: "https://asset.kompas.com/crops/p46xQ6b9ADkjRW5uPxAd0nRvvnE=/0x0:1000x667/750x500/data/photo/2020/11/21/5fb8d574cae75.jpg"
  ),
  FoodModel(
      id: 2,
      name: "Mie Ayam",
      deskripsi: "Mie ayam dari daerah ini menggunakan lebih banyak bumbu, terutama untuk ayam kecapnya. Selain kunyit, rempah-rempah yang digunakan adalah jahe, kemiri, dan ketumbar.",
      imgUrl: "https://asset.kompas.com/crops/qjRNC3rVlHB4RmopQ6nRX1xHtyo=/35x41:904x621/750x500/data/photo/2020/11/23/5fbbca027b1c8.jpg"
  ),
  FoodModel(
      id: 3,
      name: "Bakso",
      deskripsi: "Bakso memiliki akar dari seni kuliner Tionghoa-Indonesia. Hal ini ditunjukkan dari istilah 'bakso' berasal dari kata Bak-So, dalam Bahasa Hokkien yang secara harfiah berarti 'daging giling'.",
      imgUrl: "https://ik.imagekit.io/tvlk/cul-asset/guys1L+Yyer9kzI3sp-pb0CG1j2bhflZGFUZOoIf1YOBAm37kEUOKR41ieUZm7ZJ/tvlk-prod-cul-assets/culinary/asset/COLL_447-773x720-FIT_AND_TRIM-940ac6972bf5f0242be36df4235098ba.jpeg?tr=q-40,c-at_max,w-720,h-1280&amp;_src=imagekit"
  ),
  FoodModel(
      id: 4,
      name: "Spaghetti",
      deskripsi: "Di Italia, spageti disantap setelah hidangan pembuka, tetapi tidak untuk hidangan utama dalam susunan menu.",
      imgUrl: "https://asset.kompas.com/crops/ejOJRUiKrpanqZq24CTHj-Po_o0=/0x0:780x390/750x500/data/photo/2017/03/16/0927288ThinkstockPhotos-510685112780x390.jpg"
  ),
  FoodModel(
      id: 5,
      name: "Pizza",
      deskripsi: "Piza (menurut KBBI) (atau pizza) adalah hidangan gurih dari Italia sejenis adonan bundar dan pipih, yang dipanggang di oven dan biasanya dilumuri saus tomat serta keju dengan bahan makanan tambahan lainnya yang bisa dipilih. Keju yang dipakai biasanya mozzarella atau keju pizza, bisa juga keju parmesan dan beberapa keju lainnya.",
      imgUrl: "https://assets.tmecosys.cn/image/upload/t_web767x639/img/recipe/ras/Assets/2064a0e1-7ba3-4e51-afaa-2f45fc35efb3/Derivates/511cbf49-ccd3-4035-8eed-f3f369982e75.jpg"
  ),
];