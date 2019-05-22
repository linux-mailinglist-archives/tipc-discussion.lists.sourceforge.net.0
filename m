Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E441B26578
	for <lists+tipc-discussion@lfdr.de>; Wed, 22 May 2019 16:12:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hTRz9-0002ev-EP; Wed, 22 May 2019 14:12:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hTRz7-0002ec-05
 for tipc-discussion@lists.sourceforge.net; Wed, 22 May 2019 14:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=43MLB4HPgA58dKsgI10JdOzmiqlGl4F3P7XGhZUHTYE=; b=aORoaXj+vw5VJuwLQFc4gokvMl
 kTlVNabopuKRu74CK6BxqM2MuzsRtUCmtV1gbplfsKEayHl29P7FbISZgHoHW+Ll1gMR6mCc3szqb
 egHKgtyy/TCGNzQzeWv9f5jYds+TtyTbMrqt7Oo1lnSQYxgbOPb4ZMCCwN3N812efqAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=43MLB4HPgA58dKsgI10JdOzmiqlGl4F3P7XGhZUHTYE=; b=Qlayb06VFlTb7o9ORutoEBDtJX
 zPMztYkvRH5+pooiJh3+etAHvAyNl+8jitW28ju/RxD3GJVyijKRMilT3baOrThUW8ZFM+EU4kHKQ
 2vn+sXoaRux8h4t7H+Cv864ewJydA+q03lk93K27FzijAj+9eYsOnF4O4WuCOGtihCyY=;
Received: from mail-eopbgr810050.outbound.protection.outlook.com
 ([40.107.81.50] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hTRyc-0000Lr-8c
 for tipc-discussion@lists.sourceforge.net; Wed, 22 May 2019 14:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=43MLB4HPgA58dKsgI10JdOzmiqlGl4F3P7XGhZUHTYE=;
 b=mEKH4j963OZWLzyQ1OQzBvV8SxUyKZ35D6uXid7w4qhklHvibc+nMEdLG2FHOcr5pgS+1bFoD9WuYRsG+VnqvjO23XKN9SJAe2tCM267pbco+1JIbrRfmvD3BGUZXe/FqVC4e5BADtWMQh8Xt1iQYgcuiTvDLyoHeLfpeSC/LSw=
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com (52.132.21.33) by
 BL0PR1501MB2004.namprd15.prod.outlook.com (52.132.21.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Wed, 22 May 2019 13:38:49 +0000
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::ec20:2800:8222:be11]) by BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::ec20:2800:8222:be11%7]) with mapi id 15.20.1922.017; Wed, 22 May 2019
 13:38:49 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: syzbot <syzbot+6440134c13554d3abfb0@syzkaller.appspotmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "hujunwei4@huawei.com"
 <hujunwei4@huawei.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "syzkaller-bugs@googlegroups.com"
 <syzkaller-bugs@googlegroups.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "wangxiaogang3@huawei.com"
 <wangxiaogang3@huawei.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: WARNING: locking bug in rhashtable_walk_enter
Thread-Index: AQHVDUtNbnu/4SfwKUSdAx29g20ccqZ2F/MAgAEUXhA=
Date: Wed, 22 May 2019 13:38:49 +0000
Message-ID: <BL0PR1501MB20031626FEB1022DB74D08219A000@BL0PR1501MB2003.namprd15.prod.outlook.com>
References: <000000000000ac9447058924709c@google.com>
 <00000000000071c8a105896c3ef2@google.com>
In-Reply-To: <00000000000071c8a105896c3ef2@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90b695a5-37ba-4558-7a8c-08d6debad29e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR1501MB2004; 
x-ms-traffictypediagnostic: BL0PR1501MB2004:
x-ms-exchange-purlcount: 8
x-microsoft-antispam-prvs: <BL0PR1501MB2004FA470A77D6401031A1539A000@BL0PR1501MB2004.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:94;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(39860400002)(366004)(396003)(13464003)(189003)(199004)(2906002)(6116002)(110136005)(3846002)(53936002)(8936002)(55016002)(6246003)(305945005)(81166006)(81156014)(6436002)(8676002)(6306002)(9686003)(7736002)(2501003)(316002)(71190400001)(71200400001)(66066001)(229853002)(256004)(14444005)(966005)(14454004)(478600001)(74316002)(68736007)(76176011)(44832011)(33656002)(86362001)(52536014)(186003)(26005)(11346002)(7696005)(486006)(2201001)(6506007)(53546011)(5660300002)(76116006)(66476007)(66946007)(64756008)(66556008)(102836004)(66446008)(73956011)(446003)(99286004)(476003)(25786009)(99710200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR1501MB2004;
 H:BL0PR1501MB2003.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Yl39kwJLjJM5MScK7PQdoQZDKLXyhEdraOe1ENi1ZAT8gV4iqpm0zSjWyxzCSRezoAXiXhV87bCXNf4TcTAxFY4itz8WOVwktS1DYmLNbMObzBOL4NqObX1sWxjsuT3wvF21Zl9z5Zg8acBbfoUIGhhMpVNqbXdaT0EaFotvQQESdhdW+3r4m1Ki6NQ19rNb/5KSnCwD3A8IxWIfMrQ8lyMT3F/sgdy9LUubC3VpcSQroOT03EjX4zyZ4OLfacVoLsWiCuXeHq99eCsfE2LaUCrvu27BBnsCnE18WKGdiZDpfLSatCDNHLZss5iXWcwr0hNRgFTgRvrrFXmBXGfSzbWy6mmOli3at5f/N2DV8CoEJGqF2rn4cMkbjvfjOfh/zpNoiIe0ABKweYiES5CxxnrhPIZH29Wq4987nRTPopc=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90b695a5-37ba-4558-7a8c-08d6debad29e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 13:38:49.5450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR1501MB2004
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1hTRyc-0000Lr-8c
Subject: Re: [tipc-discussion] WARNING: locking bug in rhashtable_walk_enter
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org>
> On Behalf Of syzbot
> Sent: 21-May-19 17:08
> To: davem@davemloft.net; hujunwei4@huawei.com; Jon Maloy
> <jon.maloy@ericsson.com>; linux-kernel@vger.kernel.org;
> netdev@vger.kernel.org; syzkaller-bugs@googlegroups.com; tipc-
> discussion@lists.sourceforge.net; wangxiaogang3@huawei.com;
> ying.xue@windriver.com
> Subject: Re: WARNING: locking bug in rhashtable_walk_enter
> 
> syzbot has bisected this bug to:
> 
> commit 7e27e8d6130c5e88fac9ddec4249f7f2337fe7f8
> Author: Junwei Hu <hujunwei4@huawei.com>
> Date:   Thu May 16 02:51:15 2019 +0000
> 
>      tipc: switch order of device registration to fix a crash

This bug was fixed by:
commit 526f5b851a96 (" tipc: fix modprobe tipc failed after switch order of device registration")

///jon

> 
> bisection log:  https://protect2.fireeye.com/url?k=c4fa0d6e-982e08d1-
> c4fa4df5-868f633dbf25-
> 265eeab89c3c62e3&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%2
> Fbisect.txt%3Fx%3D1285d39ca00000
> start commit:   f49aa1de Merge tag 'for-5.2-rc1-tag' of git://git.kernel.o..
> git tree:       upstream
> final crash:    https://protect2.fireeye.com/url?k=f892c3bf-a446c600-
> f8928324-868f633dbf25-
> a1f259f41c2e3c70&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%2F
> report.txt%3Fx%3D1185d39ca00000
> console output: https://protect2.fireeye.com/url?k=a265e997-feb1ec28-
> a265a90c-868f633dbf25-
> 3536c18414f0985d&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%2
> Flog.txt%3Fx%3D1685d39ca00000
> kernel config:  https://protect2.fireeye.com/url?k=e063d9ce-bcb7dc71-
> e0639955-868f633dbf25-
> 34fb69deb3d9bb60&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%
> 2F.config%3Fx%3Dfc045131472947d7
> dashboard link: https://protect2.fireeye.com/url?k=b1ac8435-ed78818a-
> b1acc4ae-868f633dbf25-
> 92f95bff1ae4b05d&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fbug
> %3Fextid%3D6440134c13554d3abfb0
> syz repro:      https://protect2.fireeye.com/url?k=0473f5e5-58a7f05a-
> 0473b57e-868f633dbf25-
> 3d8da37dd852ac3b&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%2
> Frepro.syz%3Fx%3D10c586bca00000
> C reproducer:   https://protect2.fireeye.com/url?k=0797bac5-5b43bf7a-
> 0797fa5e-868f633dbf25-
> ba5da04a9604be86&q=1&u=https%3A%2F%2Fsyzkaller.appspot.com%2Fx%2
> Frepro.c%3Fx%3D14759fb2a00000
> 
> Reported-by: syzbot+6440134c13554d3abfb0@syzkaller.appspotmail.com
> Fixes: 7e27e8d6130c ("tipc: switch order of device registration to fix a
> crash")
> 
> For information about bisection process see:
> https://protect2.fireeye.com/url?k=dd8443d3-8150466c-dd840348-
> 868f633dbf25-
> e8766eb633d4e43d&q=1&u=https%3A%2F%2Fgoo.gl%2FtpsmEJ%23bisectio
> n

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
