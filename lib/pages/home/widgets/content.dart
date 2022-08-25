part of '../home_page.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Materi favorit', style: TextStyle(fontSize: 17)),
          const SizedBox(height: 18),
          _buildQuote(context),
          const SizedBox(height: 18),
          _buildPost(context),
        ],
      ),
    );
  }

  _buildPost(context) {
    return Center(
      child: Container(
        height: 210,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0.1),
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nama judul disini, cek di brief project\nsesuaikan dengan deskripsi",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 8),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Text("Lorem Ipsum has been the industry's standard dummy text ever since",
                          style: TextStyle(
                            fontSize: 14,
                          )),
                    ),
                    const SizedBox(height: 16),
                    Material(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(4),
                      child: InkWell(
                        onTap: () {},
                        child: const SizedBox(
                          height: 44,
                          width: 180,
                          child: Center(
                            child: Text(
                              'Tombol',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/post.png',
                  height: 90,
                  width: 80,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildQuote(context) {
    return Center(
      child: Container(
        height: 210,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Text("Nama yang membuat quote",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                )),
          ],
        ),
      ),
    );
  }
}
