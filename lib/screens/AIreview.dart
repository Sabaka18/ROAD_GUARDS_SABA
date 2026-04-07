import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roadguard/core/constants/appColors.dart';
import 'package:roadguard/l10n/app_localizations.dart';
import 'package:roadguard/models/Hazard_types.dart';
import 'package:roadguard/screens/home.dart';
import 'package:roadguard/screens/mainPage.dart';
import 'package:roadguard/screens/reportDetails.dart';

class ReportReview extends StatefulWidget {
  const ReportReview({super.key});

  @override
  State<ReportReview> createState() => _ReportReviewState();
}

class _ReportReviewState extends State<ReportReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: EdgeInsets.all(24.r),
      child: SafeArea(
        child: Column(children: [
          Row(children: [
                    Container(
                      width: 30.w,
                      height: 30.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffEDE8DF),
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: const Color(0xffDDD8CF)),
                      ),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_rounded, size: 14.sp),
                      ),
                    ),
                    SizedBox(width: 8.w),
                     Text(
                       AppLocalizations.of(context)!.aiReview,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  SizedBox(height: 20.h,),

                  Container(
                    width: double.infinity,
                    height:75.h ,
                    decoration: BoxDecoration(
                      color: AppColors.CardColor,
                      border: Border.all(color: Color(0xffDDD8CF)),
                      borderRadius: BorderRadius.circular(10.r),
                      

                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                        Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFDF1F1),
                            border: Border.all(color: Color(0xffEDBBBB)),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(4.r),
                            child: hazards[1].icon,
                          ),
                        ),
                        SizedBox(width: 12.w,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                          Text(hazards[1].hazardName(context),style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(hazards[1].subProblems[1](context),style: TextStyle(color: Color(0xff6B6355),fontSize: 10.sp),),
                          Text("Location",style: TextStyle(color: Color(0xff6B6355),fontSize: 10.sp),)
                        ],)
                      ],),
                    ),
                  ),
                  SizedBox(height:16.h ,),
                  Container(width: double.infinity,
                  height: 170.h,
                  decoration: BoxDecoration(color: Color(0xffFDF1F1),border: Border.all(color: Color(0xffEDBBBB)),borderRadius: BorderRadius.circular(15.r),
                  

                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(12.r),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(decoration: BoxDecoration(
                              color: AppColors.Primary_Red,
                              borderRadius: BorderRadius.circular(4.r),
                    
                            ),child: Center(child: Padding(
                              padding:  EdgeInsets.all(2.r),
                              child: Text(AppLocalizations.of(context)!.ai,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 10.sp),),
                            )),),
                            SizedBox(width: 8.w,),
                            Text(AppLocalizations.of(context)!.damageAssessment,style: 
                            TextStyle(color: Color(0xff6B6355),
                            fontWeight: FontWeight.bold,fontSize: 10.sp,letterSpacing: 2.sp),)
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40.h,
                               
                                decoration: BoxDecoration(color: AppColors.CardColor,border:Border.all(color: Color(0xffDDD8CF)),borderRadius:BorderRadius.circular(5.r) ),
                                child: Column(
                                  children: [
                                    Text(AppLocalizations.of(context)!.severity,style: TextStyle(fontSize: 10.sp),),
                                    Text(AppLocalizations.of(context)!.mild,style: TextStyle(fontSize: 11.sp),)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            Expanded(
                              child: Container(
                                height: 40.h,
                               
                                decoration: BoxDecoration(color:  AppColors.CardColor,border: Border.all(color: Color(0xffDDD8CF)),borderRadius:BorderRadius.circular(5.r)),
                                child:  Column(
                                  children: [
                                    Text(AppLocalizations.of(context)!.riskScore,style: TextStyle(fontSize: 10.sp),),
                                    Text("8.0/10",style: TextStyle(fontSize: 11.sp),)
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                       

                      ],
                    ),
                  ),
                  ),
                   Spacer(),
                        FilledButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpage()));
                },
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.Primary_Red,
                  fixedSize: Size(MediaQuery.of(context).size.width, 44.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child:  Text(
                 AppLocalizations.of(context)!.submitReport,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
        
        ],),
      ),
    ),);
  }
}