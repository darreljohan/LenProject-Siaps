import { Carousel } from "flowbite-react";

export default function DefaultCarousel() {
  return (
    <Carousel>
      <div className="flex items-center justify-center h-screen">
        <div className="h-64 flex items-center justify-center">
          <img
            alt="..."
            src="https://cdn1-production-images-kly.akamaized.net/F_XUHExdTstz-mcvEO72qx0hZec=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/721263/original/Penyakit-Monyet-aji-140813.jpg"
            className="object-contain max-w-full max-h-full"
          />
        </div>
      </div>
      <img
        alt="..."
        src="https://flowbite.com/docs/images/carousel/carousel-2.svg"
      />
      <img
        alt="..."
        src="https://flowbite.com/docs/images/carousel/carousel-3.svg"
      />
      <img
        alt="..."
        src="https://flowbite.com/docs/images/carousel/carousel-4.svg"
      />
      <img
        alt="..."
        src="https://flowbite.com/docs/images/carousel/carousel-5.svg"
      />
    </Carousel>
  );
}
