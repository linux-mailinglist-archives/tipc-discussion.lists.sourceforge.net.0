Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE9E23F6F
	for <lists+tipc-discussion@lfdr.de>; Mon, 20 May 2019 19:50:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hSmQH-0000JN-K9; Mon, 20 May 2019 17:50:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hSmQG-0000JF-5C
 for tipc-discussion@lists.sourceforge.net; Mon, 20 May 2019 17:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s50KHlEh0YeR/8BegMe5D9kKALYNMnsHN0MNS9sKW1U=; b=RNDPT/ERTmRGqvwFWFKMse+O06
 JHliZhX9bi5r5LUDbO5fSk/LNT8XkqyfnuOPYoUCKbcQ+Zpgxh2ogwpfyMQXyRNo6ib0145dBCTaw
 +pUNAAOp5FmmLHICtZ9Ty32WOCeNSiU8Rv4kpFJBWQl0BJlM8zoM5vjCU2LgK+pH67NY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s50KHlEh0YeR/8BegMe5D9kKALYNMnsHN0MNS9sKW1U=; b=nFQkHPDFyz3WtXWz6eDpx14Zfz
 SCEAd6WfcV4nxH5smuuHsbh6mlYf/fQbfMjTEw/S3KRFyyG4trPtB090km9CnnlzOuqQBYCVLkURa
 j1u2WIvvdvPFYgD/ChOf3Na5/DkUb2w0Izkd1eY74mt7h0IhCgUg8723pNyLd3wZrbw8=;
Received: from mail-eopbgr710076.outbound.protection.outlook.com
 ([40.107.71.76] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hSmQ9-00BaWK-Ka
 for tipc-discussion@lists.sourceforge.net; Mon, 20 May 2019 17:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s50KHlEh0YeR/8BegMe5D9kKALYNMnsHN0MNS9sKW1U=;
 b=eD/e7hIXZOaH4ThK7GmLtC+JBSGvWEgD4jVVFfMQnER9yXCGP05GkKQgr/sT8OJJIbIiJX2/yl9tZwdZHGJX4kvKvLL/PzSiSHotLNYcINoSkHHwqRi7zYzWR0Y+EhNjWvtENBQBzFt7LA0+m8vtqWYSV8iTdGOkbBdKuXKuDP0=
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com (52.132.21.33) by
 BL0PR1501MB2147.namprd15.prod.outlook.com (52.132.22.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.20; Mon, 20 May 2019 17:49:50 +0000
Received: from BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::ec20:2800:8222:be11]) by BL0PR1501MB2003.namprd15.prod.outlook.com
 ([fe80::ec20:2800:8222:be11%7]) with mapi id 15.20.1900.010; Mon, 20 May 2019
 17:49:50 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: David Miller <davem@davemloft.net>, "hujunwei4@huawei.com"
 <hujunwei4@huawei.com>
Thread-Topic: [PATCH v4] tipc: fix modprobe tipc failed after switch order of
 device registration
Thread-Index: AQHVDtd4uLOxtiXJT0+923RTkrVFi6Z0Sg8AgAAAktA=
Date: Mon, 20 May 2019 17:49:50 +0000
Message-ID: <BL0PR1501MB20037513418B10ECC341834E9A060@BL0PR1501MB2003.namprd15.prod.outlook.com>
References: <624f5be3-12b4-cbd4-39e2-5419b976624b@huawei.com>
 <20190520.104554.602275142720021716.davem@davemloft.net>
In-Reply-To: <20190520.104554.602275142720021716.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74c5a4ea-82a0-4fba-4f44-08d6dd4b8ec5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BL0PR1501MB2147; 
x-ms-traffictypediagnostic: BL0PR1501MB2147:
x-microsoft-antispam-prvs: <BL0PR1501MB2147B9838A7A410E819052C39A060@BL0PR1501MB2147.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(366004)(346002)(376002)(13464003)(199004)(189003)(8676002)(81156014)(81166006)(7736002)(68736007)(305945005)(33656002)(25786009)(6116002)(3846002)(4326008)(110136005)(8936002)(186003)(26005)(86362001)(256004)(2906002)(54906003)(229853002)(66066001)(14444005)(486006)(66556008)(66476007)(66946007)(76116006)(44832011)(73956011)(64756008)(66446008)(71190400001)(71200400001)(446003)(11346002)(74316002)(476003)(478600001)(52536014)(99286004)(2501003)(5660300002)(102836004)(7696005)(14454004)(316002)(6436002)(53936002)(76176011)(6506007)(53546011)(55016002)(9686003)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR1501MB2147;
 H:BL0PR1501MB2003.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: z30Bmnkkhixbo2REoet4wYSI1httcYUNfDJ5vR2DafJsZUBa0fzFc5ZoObV4ANHO9snREEuqXVrJgjT0jvodG0sNFFTIaU+sMCvC7ZUfp8cY3dAk2dnaJ8NpglWj4DTYml8kTnXUmSySI92yS4JOZuSYYReuXVuMU5KOQODBagXae8Vbhc+ByaP+iqqYoiHx4pYNXaF0nzNwVNvM47bSncZ35FyxiH0bwxXVlt3NcOzHTbNG/V18qLi7oi16bhOJEqndxqTdFMXH7uX3e87gJPveHJ7ajJV+Mry9pyURgDlTmFWV7m6Feij45ctIvoUAaKmAGFJjCsrt2jA/ZlFLOYtPbQHzD5HmkxcI5R+WJZIcg1o/JwRhhwMKmssL6W6STSZUVniJzMbCd0+1do6W+Qk5X3gRrLovJcPPDu0MuTQ=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74c5a4ea-82a0-4fba-4f44-08d6dd4b8ec5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 17:49:50.4866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR1501MB2147
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hSmQ9-00BaWK-Ka
Subject: Re: [tipc-discussion] [PATCH v4] tipc: fix modprobe tipc failed
 after switch order of device registration
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
Cc: "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "willemdebruijn.kernel@gmail.com" <willemdebruijn.kernel@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "mingfangsen@huawei.com" <mingfangsen@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Reviewed and tested. I found no problems with this.

Reviewed-by: Jon Maloy <jon.maloy@ericsson.com>


> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org>
> On Behalf Of David Miller
> Sent: 20-May-19 13:46
> To: hujunwei4@huawei.com
> Cc: Jon Maloy <jon.maloy@ericsson.com>; ying.xue@windriver.com;
> willemdebruijn.kernel@gmail.com; sfr@canb.auug.org.au;
> netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; linux-
> kernel@vger.kernel.org; mingfangsen@huawei.com
> Subject: Re: [PATCH v4] tipc: fix modprobe tipc failed after switch order of
> device registration
> 
> From: hujunwei <hujunwei4@huawei.com>
> Date: Mon, 20 May 2019 14:43:59 +0800
> 
> > From: Junwei Hu <hujunwei4@huawei.com>
> >
> > Error message printed:
> > modprobe: ERROR: could not insert 'tipc': Address family not supported
> > by protocol.
> > when modprobe tipc after the following patch: switch order of device
> > registration, commit 7e27e8d6130c
> > ("tipc: switch order of device registration to fix a crash")
> >
> > Because sock_create_kern(net, AF_TIPC, ...) called by
> > tipc_topsrv_create_listener() in the initialization process of
> > tipc_init_net(), so tipc_socket_init() must be execute before that.
> > Meanwhile, tipc_net_id need to be initialized when sock_create()
> > called, and tipc_socket_init() is no need to be called for each namespace.
> >
> > I add a variable tipc_topsrv_net_ops, and split the
> > register_pernet_subsys() of tipc into two parts, and split
> > tipc_socket_init() with initialization of pernet params.
> >
> > By the way, I fixed resources rollback error when tipc_bcast_init()
> > failed in tipc_init_net().
> >
> > Fixes: 7e27e8d6130c ("tipc: switch order of device registration to fix
> > a crash")
> > Signed-off-by: Junwei Hu <hujunwei4@huawei.com>
> > Reported-by: Wang Wang <wangwang2@huawei.com>
> > Reported-by: syzbot+1e8114b61079bfe9cbc5@syzkaller.appspotmail.com
> > Reviewed-by: Kang Zhou <zhoukang7@huawei.com>
> > Reviewed-by: Suanming Mou <mousuanming@huawei.com>
> 
> Applied.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
