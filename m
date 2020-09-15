Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BD426A3B1
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Sep 2020 12:55:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kI8bu-00044H-PL; Tue, 15 Sep 2020 10:54:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kI8bt-000449-Av
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Sep 2020 10:54:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DZMHcPMKJaEpPGaTC0B5+Hh5H9l6Pcz5GSflZC9wb4Q=; b=BhI+XePdyVPVJjIkOC3725Ix/9
 f2LtmznH2KHrLoIr9tU1bm0j3+oxZvOpbIGwXXlDBaZDX1y7FPBuxJ34cxuf3Tr7+oXOjidkldXCS
 thh+9BtOszzLzqG3JJ+5UPwFLDIEQAujF7Y5W3bR6VFpQc2JDe8IXKpuIifBFE9x9FoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DZMHcPMKJaEpPGaTC0B5+Hh5H9l6Pcz5GSflZC9wb4Q=; b=Xfxl7vJQFifi5/bmcUt44rPbg/
 2f6FFgkmRvD8tdSWECpYUugLzHR6KdNlVsXtHyUzALRxx2g5k3uoHfxRRmf+qWl1ITT4FKz9qdxQ/
 K8sa3D98j4S4bH5vXnVkP6jiP1+649luMfY5YR4Kxy/KKb9mddeiJ4MwYj9SR0AB875Q=;
Received: from mail-eopbgr80095.outbound.protection.outlook.com ([40.107.8.95]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kI8bj-00AiZS-KG
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Sep 2020 10:54:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JkzFMiak8tzZSSTlEnYST1c9AFzBQVvVnWFNX6WqKzqN32ouRwYAsq1Ah7klnq+/0YXbbFaZi1fdYmL1as5zATCzU4HkF1tbjUVTQQogC0OZHuxtp24DqnfAS8M7JxZxjmYbzfH8wzYRUeTBJfy1GXt/+KYOSUbAdQ+hITDCNuYCQrsWc/KBnJk5/2djuZn3jWKVf17xsSqtrlDG1gxIg39X7iv1ih9SZ41OQuwtAn/r/0Ki3YNdoq4ZmTjMExEyay9kKJ2BIe86vgJ3Z0FuTxB8+QdX1+qapvudYH/+qCh4Q5hnE+umvNUDOqtXSs5Iw3Qk5r5NNn/GBIRVz8vh0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZMHcPMKJaEpPGaTC0B5+Hh5H9l6Pcz5GSflZC9wb4Q=;
 b=j/oykAZ2mBqS+g6vTEwNbJ0CufBvPJPXdNml0gasBwe7BWg8AYnffR1K1n39+AfNl9mPXRp+buYnF1EHNAGleSCdri9d/68TsBPOPOJKCLelLamnWEk12e4lQlw8w2hv2zH9GvaUth6CS4SEZY3RExPZjvmI4mLX9IkeNz+chiPxwt22tTynz1NC51lBpjKihshd6+MABwNy/NlCuOOesbdrgkHNY40ZYJhq8b/xdvMfQdYgDV+ibEnCDMlYocBzmlkkPZXLm4bWKrGVpMAvJBpyXcms3pXPG1k7JGdL9icmFka/Lo6HO2zLciqjDQNe3uKMPS0qYqK2VrXj+Sfb8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZMHcPMKJaEpPGaTC0B5+Hh5H9l6Pcz5GSflZC9wb4Q=;
 b=BLqMwp+CmlN575wv3mpuKZkPibsitDwEeiHUbXfkxHekc94w8DsXi8j0O+EiuammE0rVKHg8ibFiZM5GktwtC4PkAZICQxyGONgEe08KNoMb6RayiZDD5En/p8TadSNhx6JrOrd/+sIMWt2vEiVx6xT9vXBHpaMec6lhFNLySEc=
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM0PR05MB6643.eurprd05.prod.outlook.com (2603:10a6:20b:156::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Tue, 15 Sep
 2020 10:54:36 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3370.019; Tue, 15 Sep 2020
 10:54:36 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Eric Dumazet <eric.dumazet@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "maloy@donjonn.com" <maloy@donjonn.com>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [net] tipc: fix using smp_processor_id() in preemptible
Thread-Index: AQHWfoc+himFBG6tQEGws4qIktdqQalR4IkAgAACUeCAABe0AIAAAmDQgAAv7QCAAYkt0IAAEM4AgAA+DjCAAO5sgIAUqugw
Date: Tue, 15 Sep 2020 10:54:35 +0000
Message-ID: <AM8PR05MB73321BFCEC3FF0CECC2DE390E2200@AM8PR05MB7332.eurprd05.prod.outlook.com>
References: <20200829193755.9429-1-tuong.t.lien@dektech.com.au>
 <f81eafce-e1d1-bb18-cb70-cfdf45bb2ed0@gmail.com>
 <AM8PR05MB733222C45D3F0CC19E909BB0E2510@AM8PR05MB7332.eurprd05.prod.outlook.com>
 <0ed21ba7-2b3b-9d4f-563e-10d329ebeecb@gmail.com>
 <AM8PR05MB7332E91A67120D78823353F6E2510@AM8PR05MB7332.eurprd05.prod.outlook.com>
 <3f858962-4e38-0b72-4341-1304ec03cd7a@gmail.com>
 <AM8PR05MB7332BE4B6E0381D2894E057AE22E0@AM8PR05MB7332.eurprd05.prod.outlook.com>
 <338d5df9-fe4e-7acf-1480-99984dfeab34@gmail.com>
 <AM8PR05MB7332020CE2FB9E0B416D70BAE22E0@AM8PR05MB7332.eurprd05.prod.outlook.com>
 <2b31e772-3229-3c67-1faf-9ae88849ce77@gmail.com>
In-Reply-To: <2b31e772-3229-3c67-1faf-9ae88849ce77@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [123.20.195.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e99b69b-64e3-4cfd-f90a-08d85965bc66
x-ms-traffictypediagnostic: AM0PR05MB6643:
x-microsoft-antispam-prvs: <AM0PR05MB6643BB9CD57FA7FA2C605021E2200@AM0PR05MB6643.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eOB5A/vMNJuV5sW3jfQzLyVJP9X0wcgxrXFtjQZLyKVWgTaCf7eaZrPeZI+NNdIqNBUvB3gHqhCcycLmdEXrhowwVhpv2R7s0/LSo0hQoIMVKOZ9U5EeVM2cL12pZTo0VFwHWyM8eDu/vm/ddphi9n0RKl+4erLMP6nKd13CMmrzUeBFYdkx+66JnIQgilohx0O+7hN8kR+MZLhJ8g9wJwLf3tW1zh1H4ShTBGbO2e8l1Wez3sLHRuCw+QloWAfloan8wp8jPL/hZaLiTGO/yRDY+TtHp4SEWhYYSvyqxa2aYxBAeURRTApjvwcQDOPzFge9OnkJAi3eX9dUYmjtOESDbSZnQ21QMKHavSWlKGS5ki7yIlTwR89zVwT8TR1R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(376002)(39850400004)(346002)(136003)(55236004)(6506007)(478600001)(86362001)(316002)(8936002)(53546011)(4326008)(76116006)(66556008)(110136005)(64756008)(66446008)(66476007)(83380400001)(66946007)(186003)(26005)(71200400001)(8676002)(2906002)(33656002)(52536014)(9686003)(7696005)(5660300002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Xd1O4G5lUDUxwv6MKjn3DcfhvghaYEMoKpl1pCYQJs1wrIgL7BvYJ40a9dNGDqn+CkkF4C9jxKJvGmfqkOIooEfNm9Gvk6MFl277TUjVdzgxLAJNi2UAPBk7/ZMskaDQ8lKNctgFM/P/vgPuCxHgvF+Sh2m57W7Y5qyAgy6t9xe1IAC/uIjmC4lPfgJNCjgUMc8k4n4LeQST01ibsFjLoU4x0H2COvlFpWTDpaV1vsTyi4huaBBT0d+YgXV4dt8BFKboCBXwXxyXMWngMdIad5pXXcTMxBJDupbHSZOcdSaF0ftDtxNxpTQAcjnXR3OyY+Z91VcXb87xTgRdY4a3QGyp8p6H4/EQX+PuG5+v5d+6AUbTzYuZjxmOafIlXGfzwZEPlBKQjY+LDUvUqjeeCzqYllC8GrNk2F0L1G3p9s8FAJ5LR8gN6NrVLLK66uOfTdb4KLPVp3tzUgaXau27BjbKKA2lbcGCmn7Mkq5m3462G2MUFkFCvApuBneDQ8/zbXWedKNRQLcdkxi/TcUuDYdZUM2vWi01c7sdJtAyVcfS4dSOKDGHTklU/kZoCGeclS5cfPabsYQAcWG77l8o/eVB71tAnhQK8rPGL2cw2JjPBycf5d4MS5snNax0+dorIn6NX0wghqoRKponM2xNxQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e99b69b-64e3-4cfd-f90a-08d85965bc66
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2020 10:54:35.9443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zYpZOG5snasQDlMCLpz2ajfss5owA+7Kwz5ZLwrUQ22YOtfFZjnseRoRQZLs1YrKUpWtKkI+zyb9LcxDOFrIWMQDSa+FJI67jVzeDJxmwgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6643
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.95 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1kI8bj-00AiZS-KG
Subject: Re: [tipc-discussion] [net] tipc: fix using smp_processor_id() in
 preemptible
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Eric Dumazet <eric.dumazet@gmail.com>
> Sent: Wednesday, September 2, 2020 2:11 PM
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Eric Dumazet <eric.dumazet@gmail.com>; davem@davemloft.net;
> jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; netdev@vger.kernel.org
> Cc: tipc-discussion@lists.sourceforge.net
> Subject: Re: [net] tipc: fix using smp_processor_id() in preemptible
> 
> 
> 
> On 9/1/20 10:52 AM, Tuong Tong Lien wrote:
> 
> > Ok, I've got your concern now. Actually when writing this code, I had the same thought as you, but decided to relax it because of the
> following reasons:
> > 1. I don't want to use any locking methods here that can lead to competition (thus affect overall performance...);
> > 2. The list is not an usual list but a fixed "ring" of persistent elements (no one will insert/remove any element after it is created);
> > 3. It does _not_ matter at all if the function calls will result in the same element, or one call points to the 1st element while another
> at the same time points to the 3rd one, etc. as long as it returns an element in the list. Also, the per-cpu pointer is _not_ required to
> exactly point to the next element, but needs to be moved on this or next time..., so just relaxing!
> > 4. Isn't a "write" to the per-cpu variable atomic?
> >
> 
> I think I will give up, this code is clearly racy, and will consider TIPC as broken.
> 
> Your patch only silenced syzbot report, but the bug is still there.
Hi Eric,
Sorry but could you please tell me why you think it is "racy"... and the bug is still there...? Thanks!
I agreed we could make it in some brighter ways, but for now by disabling preemption prior to the per-cpu variable access is fine enough? Also lets say even in case the code is interrupted by BH or interrupts..., we should have no issue.

BR/Tuong
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
