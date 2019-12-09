Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7574311708D
	for <lists+tipc-discussion@lfdr.de>; Mon,  9 Dec 2019 16:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=56oViKj54gsHevXOiiUPrKAZRAyfbDeA94d05VLLPkc=; b=dGiytaboIm8INNUrNGEJfBoiK
	tQYgVAomeGY/AHC7o156GYvq9QYpqCRE2mbt225JSBSmt1dFp316t0xB58Xrz8gqXVwH+e3zSRtHD
	QVlFRsLcuuPxjXp3414tJ+AWenQwL1X0OviiBj5sK87KlBztYvHtdW+VP1gYL+XAUBcIU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ieL4T-0003Z9-5i; Mon, 09 Dec 2019 15:35:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1ieL4Q-0003Yw-RZ
 for tipc-discussion@lists.sourceforge.net; Mon, 09 Dec 2019 15:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PiP3KJdJaCyGoj/9iPj4kElYbze1AGbCzRIvbJt/aGM=; b=aRs0j4bUNwAcRSpR+fww+Qd0Nf
 EDrRrj3LodtP+EyCqEEQsmbJQdgAoREuFgWo5IiiAoZcR9nYZ8AWGHhXu5QmlYTzReApptKbQOnVL
 kLodCKfQqHRdmGLqJN2c3g/L/9PihExdWuvwlzgR8p7zbEiax0AEtQGlw8dl/0guhaMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PiP3KJdJaCyGoj/9iPj4kElYbze1AGbCzRIvbJt/aGM=; b=gVdhksm31uvP9kOL0+kXVgPAnq
 2MXp6jnD3eLng5oNmzn4IJCocTpONuUynjX3umdqMw4ZJ+i5gL55SoIjit4c6HnVwzNrHSbN4FWEx
 7H5KWSdiNwGRUxpxQAec+NR5wXKBUNZ21vRg26IEBviJYbaUV8LefUTW939GyYDM0NoI=;
Received: from mail-eopbgr680080.outbound.protection.outlook.com
 ([40.107.68.80] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ieL4H-00FWIE-OF
 for tipc-discussion@lists.sourceforge.net; Mon, 09 Dec 2019 15:35:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IQWZ0d22YMcuPEdWIMwoCCIELeCkmE3R7vZl5xqIo0HTZE+P/Z8RxtiyonfaVcE0CWDqdFPWa1MgE0sxY+/sgmXnEL2jXdubxdar9EdEFbIa+jdpNTsm6NCISCFwugawpHPiEfDghvZvEgXxwUxyu/bpV7K/+YPfStRr/Jz8ApSo2lTLjH7WuEnhNVwVijTS1VkhqzMnFv7nmc2EcvL9BRi1KR7zOVMcbMRQp1N2zBepblQYJzLws+iaY1t5AIYcA6Z5UnINlZKNRW3a2t3xcUl7lGIoSMfiblsmch6tjFSMtu5b9R+LFpplVykWQmsr0XsCbksD6mURA3zyAfzIjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PiP3KJdJaCyGoj/9iPj4kElYbze1AGbCzRIvbJt/aGM=;
 b=RNSY9l7FSR3WYPlITgFTrejWR9cCrYLC71ZV1uA+wHyphn16G7bGNkyD4w9ailkgNb+JXkPe9sM7OsnjjXdnwMZ7AAx+aqZ53m395TSaccPY3zU/sgOIJhHfqjIkh1MGqfx0s9fXiT/Ys3GEaiMhMAyaBQlAIhgIRH72tStAdKKyLV76USrp9Wsuad7YkFTX5sw96Jsx7ar0xWDAQ01YrUpvqge/uVha1NvE8qSyvcrk3w3uQ9zhfOJ5Ce9TRuUZQiYZU5FDk432mr2VucGPMU6g4OorlUcIFebnCmjKGbpmmYoMxGwqkkJiM4Aax4rl7IayXB03rWtNxwwU85BsBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PiP3KJdJaCyGoj/9iPj4kElYbze1AGbCzRIvbJt/aGM=;
 b=OmQdOKT2KOQWEVfzfJLe0zAF9RydlFLHX1BlqeLXmXiCnjiRHyJIDTZ64aSw90XP9tUAbWtm319TpCSLW14guGY1joJtI5KQ8qbA0OmTyhkIYh7mJv85/YOgXriMftx+nN+udricW0dAXOSeFAvs0NYNfFdN2BRarBdNChYY3vc=
Received: from CY4PR15MB1317.namprd15.prod.outlook.com (10.172.178.136) by
 CY4PR15MB1816.namprd15.prod.outlook.com (10.172.79.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Mon, 9 Dec 2019 15:01:37 +0000
Received: from CY4PR15MB1317.namprd15.prod.outlook.com
 ([fe80::2964:799:8d01:7abb]) by CY4PR15MB1317.namprd15.prod.outlook.com
 ([fe80::2964:799:8d01:7abb%4]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 15:01:37 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [net] tipc: fix use-after-free in tipc_disc_rcv()
Thread-Index: AQHVrnkW7xaD4Kud2U6yRebNKXMl/aex5hkw
Date: Mon, 9 Dec 2019 15:01:36 +0000
Message-ID: <CY4PR15MB13172674F8F59EDBE031BE599A580@CY4PR15MB1317.namprd15.prod.outlook.com>
References: <20191209101132.18298-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191209101132.18298-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42c2b74b-af07-40a8-becf-08d77cb8b05e
x-ms-traffictypediagnostic: CY4PR15MB1816:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CY4PR15MB18160923D749500A7004D58B9A580@CY4PR15MB1816.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:159;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(366004)(136003)(39860400002)(13464003)(199004)(189003)(66446008)(76116006)(64756008)(229853002)(66556008)(66476007)(66946007)(2906002)(71200400001)(9686003)(71190400001)(6506007)(186003)(55016002)(26005)(53546011)(110136005)(316002)(5660300002)(305945005)(33656002)(86362001)(44832011)(52536014)(8936002)(478600001)(7696005)(8676002)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1816;
 H:CY4PR15MB1317.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JEl6X0Y0mZxsJ+pyxsBcJW02dZFxkuX3iCSAlgyq152/R/quAPzJCr+0hjzlWwWGtZtJTMTcYczqOrIzJuAGgpIW9oMrVBWgEs4IBOWU1prC1oKVp+0ILvxzQt+92uU5vdZukKet6qK/xdRA+bLTB/o9dCcgqAycZ1bGUsfc5UiAZ8c+QuzB+Yk3vEa6TVe6EJtmw6RVeL7yLYf4ARRSBeTq1YwG0n14c4ZTv3aqzmt2/8xQFCtrb4mlPVEghAuWw3Ynfu4Pip8Tg2k7BRAkr797nDIAiIUAnvLDEHxXAY+B9s2SISsy/esJ8h8chPh0V/7zSVtfs3ZRIUDa2TTG+QzNE7wTrZWmxw4/Ky5bgATqZWxuR8Jn4pxv8QSbBoY+41D2+fAszWBl5Vp8jiXYtN1DKbmxC9g/LP3RNbkURNzP6hp93AyBOnjmJtD0wWjNt8j0jYngG6jFAN3zpYrchcK2uSYoRYnma1avZKhA0UoEkBrIg0VElD2TpSbGYxbn
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c2b74b-af07-40a8-becf-08d77cb8b05e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 15:01:36.9911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cA44tf910gFzwO+ba+7d3+eGTKeB4wr3kWJQveGhmi3mWRnSIDWds45N8OaSIIzz1bNLG3kKH3kx4bAxUubAgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1816
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ieL4H-00FWIE-OF
Subject: Re: [tipc-discussion] [net] tipc: fix use-after-free in
 tipc_disc_rcv()
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: jon

> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 9-Dec-19 05:12
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [net] tipc: fix use-after-free in tipc_disc_rcv()
> 
> In the function 'tipc_disc_rcv()', the 'msg_peer_net_hash()' is called
> to read the header data field but after the message skb has been freed,
> that might result in a garbage value...
> 
> This commit fixes it by defining a new local variable to store the data
> first, just like the other header fields' handling.
> 
> Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/discover.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/net/tipc/discover.c b/net/tipc/discover.c
> index b043e8c6397a..bfe43da127c0 100644
> --- a/net/tipc/discover.c
> +++ b/net/tipc/discover.c
> @@ -194,6 +194,7 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
>  {
>  	struct tipc_net *tn = tipc_net(net);
>  	struct tipc_msg *hdr = buf_msg(skb);
> +	u32 pnet_hash = msg_peer_net_hash(hdr);
>  	u16 caps = msg_node_capabilities(hdr);
>  	bool legacy = tn->legacy_addr_format;
>  	u32 sugg = msg_sugg_node_addr(hdr);
> @@ -242,9 +243,8 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
>  		return;
>  	if (!tipc_in_scope(legacy, b->domain, src))
>  		return;
> -	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
> -			     msg_peer_net_hash(hdr), &maddr, &respond,
> -			     &dupl_addr);
> +	tipc_node_check_dest(net, src, peer_id, b, caps, signature, pnet_hash,
> +			     &maddr, &respond, &dupl_addr);
>  	if (dupl_addr)
>  		disc_dupl_alert(b, src, &maddr);
>  	if (!respond)
> --
> 2.13.7


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
