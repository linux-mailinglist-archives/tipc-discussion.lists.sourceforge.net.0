Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8212C63721
	for <lists+tipc-discussion@lfdr.de>; Tue,  9 Jul 2019 15:40:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hkqLo-0002m3-GL; Tue, 09 Jul 2019 13:40:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hkqLn-0002lw-FI
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jul 2019 13:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I2UO8kYnnbXtKD5qMIMbOYdHnWAU6Ef/UI1XueY2urA=; b=cUDOhK8a9Iji56KAS7Za8Q2clj
 3ab4RKXZs+yPUaMOdNfRpc7jf/zFGWzfPBswYmMpsoHUOnpJaxwvJ4eFClZ79tqQw2H/KAsglmKG1
 UOBpCpj9tjACih+kYGQARTjn/EyhZV/ypjnHUKHpI8aP+l9rmJZzQiaYJN8ZJTZOBxd4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I2UO8kYnnbXtKD5qMIMbOYdHnWAU6Ef/UI1XueY2urA=; b=foiqZZh5MG69y8E2gYph/5a1uR
 w95mvxmqlEqm7ldL427P6v2W8UY1V7Tn0JzmfyvmvHSbQ7OjWtRtrEq+VEa2PEB9lJG+4TUvKFTjK
 THA/K6UMFWeSMyOvb/0OMFIlruAzKMWFf0Rhg3EEzNKB0HBnXZ6+gukylDxKhjY/DD8c=;
Received: from mail-eopbgr820057.outbound.protection.outlook.com
 ([40.107.82.57] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hkqLi-00DFpj-8k
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jul 2019 13:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I2UO8kYnnbXtKD5qMIMbOYdHnWAU6Ef/UI1XueY2urA=;
 b=bTWxDaUhjBIhpUo5BQRfJUtSaKdHXLgUe1fqbl5hRO2K2n1L0nCcRQWg3SJJ/uwbyj4HRPcuR3guxCRXZVsekyMGmfK8GA/GL7yTsWw05x/KfBt3IHflF6LVpGlZ2MKB+bxqKBieYtSKjTcCK/hDAXR864GRBZamV12Vfvhu+k0=
Received: from MN2PR15MB3581.namprd15.prod.outlook.com (52.132.172.94) by
 MN2PR15MB3678.namprd15.prod.outlook.com (52.132.173.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Tue, 9 Jul 2019 13:25:38 +0000
Received: from MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7d02:e054:fcd1:f7a0]) by MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7d02:e054:fcd1:f7a0%7]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 13:25:38 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Eric Dumazet <eric.dumazet@gmail.com>, Chris Packham
 <Chris.Packham@alliedtelesis.co.nz>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH] tipc: ensure skb->lock is initialised
Thread-Index: AQHVNRbZCg2+IkEFUEKEsAEksjW2W6bB5j8AgABgI5A=
Date: Tue, 9 Jul 2019 13:25:37 +0000
Message-ID: <MN2PR15MB35811151C4A627C0AF364CAC9AF10@MN2PR15MB3581.namprd15.prod.outlook.com>
References: <20190707225328.15852-1-chris.packham@alliedtelesis.co.nz>
 <2298b9eb-100f-6130-60c4-0e5e2c7b84d1@gmail.com>
 <361940337b0d4833a5634ddd1e1896a9@svr-chch-ex1.atlnz.lc>
 <87fd2150548041219fc42bce80b63c9c@svr-chch-ex1.atlnz.lc>
 <b862a74b-9f1e-fb64-0641-550a83b64664@gmail.com>
In-Reply-To: <b862a74b-9f1e-fb64-0641-550a83b64664@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3cafed7e-f39b-42fb-4450-08d70470eee3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR15MB3678; 
x-ms-traffictypediagnostic: MN2PR15MB3678:
x-microsoft-antispam-prvs: <MN2PR15MB3678D433105582423EC4D7DD9AF10@MN2PR15MB3678.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(199004)(189003)(13464003)(7736002)(186003)(2201001)(14444005)(66066001)(99286004)(7696005)(53936002)(102836004)(6246003)(54906003)(25786009)(486006)(256004)(44832011)(8936002)(14454004)(316002)(81156014)(81166006)(26005)(86362001)(8676002)(110136005)(71190400001)(52536014)(229853002)(5660300002)(66946007)(66476007)(6506007)(74316002)(53546011)(11346002)(4326008)(76116006)(2906002)(2501003)(64756008)(66446008)(6116002)(9686003)(66556008)(6436002)(446003)(3846002)(76176011)(68736007)(305945005)(478600001)(55016002)(33656002)(71200400001)(73956011)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR15MB3678;
 H:MN2PR15MB3581.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xIHWuHcps/02WHpKmUTzlIR4PyK1gmW3XFuK8xWNWQRwxrH3hnmFLAT0Jy29aoV2YvdI9ACXnHTzwtJCcY9qJnB+X7zHzAWo65GV9ZTTt7ia4YzJQZfye6ric4/gy2mKSb68ZWdlcUImu0agQK/ztmc2CA5PasLmN0HlGmta0kQgOWrqQgphTfE29dcxfDc4m6spalK4LiuWQflGGf055Ty2YFRDJeykJGfwY9JbR8+NZIF8ERezdrv6Olp5VUaaYWhmC0mo6P78LRiphkClY8vjZOtLuFL9g4TrA3A0G59/V0e4dAhKbr9zSMPJHKUiJ6XfXFhPb4hTFn2XiAC8SKpsksMSddqaklVv42YVhfUsV7wqe9TWreCPY37HlVFj+nSFBZkVW9fWEWGrh2aK8r+xnLxTsoJ9wQKwX2yNhYc=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cafed7e-f39b-42fb-4450-08d70470eee3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 13:25:38.4185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR15MB3678
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.82.57 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hkqLi-00DFpj-8k
Subject: Re: [tipc-discussion] [PATCH] tipc: ensure skb->lock is initialised
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Eric Dumazet <eric.dumazet@gmail.com>
> Sent: 9-Jul-19 03:31
> To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>; Eric Dumazet
> <eric.dumazet@gmail.com>; Jon Maloy <jon.maloy@ericsson.com>;
> ying.xue@windriver.com; davem@davemloft.net
> Cc: netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH] tipc: ensure skb->lock is initialised
> 
> 
> 
> On 7/8/19 11:13 PM, Chris Packham wrote:
> > On 9/07/19 8:43 AM, Chris Packham wrote:
> >> On 8/07/19 8:18 PM, Eric Dumazet wrote:
> >>>
> >>>
> >>> On 7/8/19 12:53 AM, Chris Packham wrote:
> >>>> tipc_named_node_up() creates a skb list. It passes the list to
> >>>> tipc_node_xmit() which has some code paths that can call
> >>>> skb_queue_purge() which relies on the list->lock being initialised.
> >>>> Ensure tipc_named_node_up() uses skb_queue_head_init() so that the
> >>>> lock is explicitly initialised.
> >>>>
> >>>> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> >>>
> >>> I would rather change the faulty skb_queue_purge() to
> >>> __skb_queue_purge()
> >>>
> >>
> >> Makes sense. I'll look at that for v2.
> >>
> >
> > Actually maybe not. tipc_rcast_xmit(), tipc_node_xmit_skb(),
> > tipc_send_group_msg(), __tipc_sendmsg(), __tipc_sendstream(), and
> > tipc_sk_timeout() all use skb_queue_head_init(). So my original change
> > brings tipc_named_node_up() into line with them.
> >
> > I think it should be safe for tipc_node_xmit() to use
> > __skb_queue_purge() since all the callers seem to have exclusive
> > access to the list of skbs. It still seems that the callers should all
> > use
> > skb_queue_head_init() for consistency.

I agree with that.

> >
> 
> No, tipc does not use the list lock (it relies on the socket lock)  and therefore
> should consistently use __skb_queue_head_init() instead of
> skb_queue_head_init()

TIPC is using the list lock at message reception within the scope of tipc_sk_rcv()/tipc_skb_peek_port(), so it is fundamental that the lock always is correctly initialized.

> 
[...]
> 
> tipc_link_xmit() for example never acquires the spinlock, yet uses skb_peek()
> and __skb_dequeue()


You should look at tipc_node_xmit instead. Node local messages are sent directly to tipc_sk_rcv(), and never go through tipc_link_xmit()

Regards
///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
