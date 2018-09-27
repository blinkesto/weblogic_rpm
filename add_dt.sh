#!/bin/sh


wlst.sh add_jvm_args.wlst weblogic bagel4none t3://preecomadm01.paneracloud.com:7001 -DDTSERVICE=catering-web catweb01,catweb02

wlst.sh add_jvm_args.wlst weblogic bagel4none t3://preecomadm01.paneracloud.com:7001 -DDTSERVICE=core-services ronapps15,ronapps16,ronapps17,ronapps18,ronapps23,ronapps24,ronapps25,ronapps26

wlst.sh add_jvm_args.wlst weblogic bagel4none t3://preecomadm01.paneracloud.com:7001 -DDTSERVICE=delivery-web ronweb01,ronweb02,ronweb03

wlst.sh add_jvm_args.wlst weblogic bagel4none t3://preecomadm01.paneracloud.com:7001 -DDTSERVICE=foundation-api ronapps11,ronapps12,ronapps21,ronapps22,ronapps25,ronapps26

wlst.sh add_jvm_args.wlst weblogic bagel4none t3://preecomadm01.paneracloud.com:7001 -DDTSERVICE=Order-Service ronapps01,ronapps02

wlst.sh add_jvm_args.wlst weblogic bagel4none t3://preecomadm01.paneracloud.com:7001 -DDTSERVICE=Payment-Ecom ronapps03,ronapps04,ronapps13,ronapps14

wlst.sh add_jvm_args.wlst weblogic bagel4none t3://preecomadm01.paneracloud.com:7001 -DDTSERVICE=Services-Ecom ronapps05,ronapps06,ronapps19,ronapps20


#
wlst.sh add_jvm_args.wlst weblogic bmxpb3yyHSrUKGv t3://preoslapp01.preprod.paneracloud.com:7001   -DDTSERVICE=order-slotting instance1,instance2

wlst.sh add_jvm_args.wlst weblogic F994x745EqUseGy t3://prekioskapp01.preprod.paneracloud.com:7001 -DDTSERVICE=services-kiosk instance1,instance2

wlst.sh add_jvm_args.wlst weblogic uzHL5P7D6jfRi34 t3://prexssofadm01.preprod.paneracloud.com:7001 -DDTSERVICE=sso instance1,instance2

wlst.sh add_jvm_args.wlst weblogic rUeMcJk6Ku63zYw t3://prexurmpadm01.paneracloud.com:7001         -DDTSERVICE=uramp instance1,instance2,instance3

wlst.sh add_jvm_args.wlst weblogic uUYZBsQ2z8TDZ3h t3://prexpdeadm01.paneracloud.com:7001          -DDTSERVICE=Decision instance1,instance2,instance3,instance4

wlst.sh add_jvm_args.wlst weblogic uUYZBsQ2z8TDZ3h t3://prexpdeadm02.paneracloud.com:7001          -DDTSERVICE=Decision instance1,instance2,instance3,instance4

wlst.sh add_jvm_args.wlst weblogic HoRAMo6zsC8FmD6 t3://preltoweb01.preprod.paneracloud.com:7001   -DDTSERVICE=Limited-Order instance1

