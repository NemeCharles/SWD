import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swdltd/styles/textstyles.dart';
import 'package:swdltd/widgets/gradient_text.dart';
import '../models/quick_action_model.dart';
import '../widgets/divider.dart';
import '../widgets/nav_widget.dart';
import '../widgets/news.dart';
import '../widgets/options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<QuickActions> actions = [
    QuickActions(label: 'Data', img: 'assets/data.svg'),
    QuickActions(label: 'Airtime', img: 'assets/airtime.svg'),
    QuickActions(label: 'Showmax', img: 'assets/showmax.svg'),
    QuickActions(label: 'Giftcards', img: 'assets/giftcard.svg'),
    QuickActions(label: 'Betting', img: 'assets/bet.svg'),
    QuickActions(label: 'Electricity', img: 'assets/electricity.svg'),
    QuickActions(label: 'TV/Cables', img: 'assets/tv.svg'),
    QuickActions(label: 'E-pin', img: 'assets/pin.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Container(
        height: 52.h,
        width: 52.w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0XFFEF5858),
                Color(0XFFEFA058),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
          shape: BoxShape.circle
        ),
        child: Center(
          child:  SvgPicture.asset(
            'assets/chat.svg',
            height: 21.3.h, width: 23.w,
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        destinations: const [
          Navs(
            img: 'assets/home.svg',
            label: 'Home',
            style: Colors.white,
          ),
          Navs(
            img: 'assets/service.svg',
            label: 'Services',
          ),
          Navs(
            img: 'assets/stats.svg',
            label: 'Statistics',
          ),
          Navs(
            img: 'assets/referrals.svg',
            label: 'Referral',
          ),
          Navs(
            img: 'assets/Settings.svg',
            label: 'Settings',
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Welcome, Neem 👋🏾', style: AppTextStyles.h3.copyWith(color: const Color(0XFF141414)),),
        backgroundColor: Colors.white,
        leadingWidth: 70.w,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            height: 44.h,
            width: 44.w,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0XFFA4A4A4), width: 1),
              shape: BoxShape.circle
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/profile.svg',
                height: 22.h, width: 22.w,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 22.w),
            child: Container(
              height: 44.h,
              width: 44.w,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0XFFA4A4A4), width: 1),
                  shape: BoxShape.circle
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/Notification.svg',
                  height: 22.h, width: 22.w,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240.h,
              width: 375.w,
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(24.r)
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h,),
                  Container(
                    height: 99.h,
                    width: 327.w,
                    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16.r), bottomRight: Radius.circular(16.r)),
                      gradient: const LinearGradient(
                          colors: [
                            Color(0XFFEF5858),
                            Color(0XFFEFA058),
                          ],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'WALLET BALANCE', style: AppTextStyles.body1,
                            ),
                            Row(
                              children: [
                                Text(
                                  'NGN 50,000 ', style: AppTextStyles.sub.copyWith(fontWeight: FontWeight.w700, letterSpacing: 0.01),
                                ),
                                Icon(Icons.visibility_off_outlined, size: 12.sp, color: Colors.white,)
                              ],
                            ),
                            SizedBox(height: 7.h,),
                            Container(
                              height: 20.h,
                              width: 108.w,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.all(Radius.circular(40.r))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cashback ', style: AppTextStyles.body1.copyWith(color: const Color(0XFF282828)),
                                  ),
                                  GradientText('N341.20',
                                      gradient: const LinearGradient(
                                    colors: [
                                      Color(0XFFEF5858),
                                      Color(0XFFEFA058),
                                    ],
                                  ),
                                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10.sp))
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 69.h,
                          width: 2,
                          color:  const Color(0XFFD04E4E).withOpacity(0.6),
                        ),
                        Container(
                          height: 69.h,
                          width: 140.w,
                          padding: EdgeInsets.only(left: 11.w),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(8.r), bottomRight: Radius.circular(8.r)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'MONIEPOINT', style: AppTextStyles.body1,
                              ),
                              Row(children: [
                                Text(
                                  '8192017482 ', style: AppTextStyles.sub.copyWith(fontWeight: FontWeight.w700, letterSpacing: 0.0001),
                                ),
                                Icon(Icons.copy_all_outlined, color: Colors.white, size: 14.sp,)
                              ],),
                              Text(
                                'Deposit Fee: N20', style: AppTextStyles.body1,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LowerOptions(
                          img: 'assets/Plus.svg',
                          label: 'Top up',
                        ),
                        SlitBorder(),
                        LowerOptions(
                          img: 'assets/Send.svg',
                          label: 'Transfer',
                        ),
                        SlitBorder(),
                        LowerOptions(
                          img: 'assets/history.svg',
                          label: 'History',
                        ),


                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 10.h),
                    child: Container(
                      height: 5.h, width: 48.w,
                      decoration: BoxDecoration(
                        color: const Color(0XFFE9E9E9),
                        borderRadius: BorderRadius.all(Radius.circular(18.r))
                      ),
                    ),
                  )
                ],
              ),
            ),
            /// second half of it
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        'Quick Actions', style: AppTextStyles.h2,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  /// grid view
                  SizedBox(
                    height: 200.h,
                    child: GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal:20.w),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, // Number of columns in the grid
                        crossAxisSpacing: 5.h, // Space between columns
                        mainAxisSpacing: 5.w, // Space between rows
                      ),
                      itemCount: 8, // Total number of items in the grid
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0XFF282828), // Background color of the grid item
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                actions[index].img,
                                height: 24.h, width: 24.w,
                              ),
                              Text(
                                actions[index].label, style: AppTextStyles.body3,
                              )
                            ],
                          )
                        );
                      },
                    ),
                  ),
                  /// grid view
                  SizedBox(height: 10.h),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 21.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'News & Update', style: AppTextStyles.h2,
                        ),
                        GradientText('View all',
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0XFFEF5858),
                                  Color(0XFFEFA058),
                                ], ),
                            style: AppTextStyles.sub.copyWith(fontWeight: FontWeight.w500)
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  SizedBox(
                    height: 120.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        News(),
                        News(),
                      ]
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



