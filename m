Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD48BA3F33
	for <lists+tipc-discussion@lfdr.de>; Fri, 30 Aug 2019 22:56:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i3nwx-0001qh-W6; Fri, 30 Aug 2019 20:56:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1i3nwx-0001qJ-Cj
 for tipc-discussion@lists.sourceforge.net; Fri, 30 Aug 2019 20:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z9fHLxJgRRAvDcA9ulWrstDhZFLR+dquNVAUT/NArE0=; b=Ka3VCZPRYdyzNfH1VLagwv1e7P
 ekWjAYGpgCZ8uMO1x/0w0QF7XCl7MwUPGJZfH4ucR4OZ3xYdafiF1AqxYRqOIoga8DWrMCJReLQfr
 fE4G+3iB/KcDEU2XoyYqcZbdfmaQyOVGroyuN8rXpoSPB7/eVpDIc9M5yaxV0Y7Hjwfw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z9fHLxJgRRAvDcA9ulWrstDhZFLR+dquNVAUT/NArE0=; b=OT7GX4W7w8qPUXCt0ort8jxpmG
 09mrjvfrqdBbvQI1TC9/cyzO8XCx70pr9KB4XfoNCVgIxaiMl0RPIp2Amf0DrABq3qPDR1uz4jnoQ
 nxm3e+ek+nulgRh17MmxPyH62aeSqUbzqUw5ccGYqZiu7l809XQPkF8upTVVp4yu0cyI=;
Received: from mail-eopbgr710079.outbound.protection.outlook.com
 ([40.107.71.79] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i3nwu-004GAJ-8J
 for tipc-discussion@lists.sourceforge.net; Fri, 30 Aug 2019 20:56:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGSL0hIkjJ87i43rC5TkNCI+kCnrCVpRYprVf006zKKVlO+E8uVdu4ZiyNfWH0PXIX8MtUvTAaRq8W2Tjq+470iwNYbLkbb+4uppUTtHDfuQ1e5jvvDzoD+fgJNYsXnuXL7GRkWxgS4UqqrMFwFQ10dfh7gQmqDAbnyuRqW6JSel0ZS0vTeQL7rM+Wv8n+KxBa9k+W8j14Km2xogP+CzhZVHvUeiQ9Hh2wWQz0LlvIRbB/Og+gGhEnXl1CE8fDbLFsXqh6fSXE8B4EPftjDBF9C3rofbDQK+Ant+C2TDwbKBCTRuo2wz/q/vLCNictWcM9FxWpHNGlTKEljftnJ3IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z9fHLxJgRRAvDcA9ulWrstDhZFLR+dquNVAUT/NArE0=;
 b=XSlnXsTZ9AG4gn5LFwac4JLgHMEzCnWLQrf1GiMTu+0ygBFCpeNkBvBWidXigpWsfJcd6UIYVKGWPAoBC7mJ0EyHIECTgDr2pJPHG0QE7aAEfrYlGkwBAQ9+pW9bmOAbvZ8HREL3YM8msABTPUPfHWTGshG6JCu6skAP2ASLma9v5FrnuY6LbiTT8WSj4ny43Lnxk7qBlDIeMKDyTnBM4sGRpRuGRX1zH7KF0+9Syjbw40qKIvqicZQEsIXMJ5ZwqdIZHudKx8XeX8gTaK6fd5s3Fwx8iwIIFoXUiw0Cm1u3b8/myPbOtQscVQTluSjop18ObQw969C4nUthPz/2Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z9fHLxJgRRAvDcA9ulWrstDhZFLR+dquNVAUT/NArE0=;
 b=B5Z8Wo3eeNo3lLb5/ZJCBQQAIsU4NnTDwSSHqQpAgNPpGnWSEPUtcAWWVkFwYXvAN7BHFXzH3X0/bg0w2BVzkjsZA+c9cksL9NEtApyPk278c5uhYZ7JNJQjbl04Es3BbBrWA3mYFXZqC48iKm7Hjckwgigm7nw2QL6suD8UeIc=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3526.namprd15.prod.outlook.com (10.255.155.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.20; Fri, 30 Aug 2019 20:56:40 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2%7]) with mapi id 15.20.2199.021; Fri, 30 Aug 2019
 20:56:40 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [PATCH RFC 1/2] tipc: fix unlimited bundling of small messages
Thread-Index: AQHVXl4CSxv/pkeAzUm8YCamPycze6cULbOg
Date: Fri, 30 Aug 2019 20:56:40 +0000
Message-ID: <CH2PR15MB35753A0403CD960910B1B4B59ABD0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190829113607.13772-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20190829113607.13772-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9036aef5-504a-497a-a055-08d72d8c8ea9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3526; 
x-ms-traffictypediagnostic: CH2PR15MB3526:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3526A8F8074A569C4374A8A19ABD0@CH2PR15MB3526.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(189003)(13464003)(199004)(86362001)(305945005)(11346002)(25786009)(486006)(76176011)(7736002)(3846002)(5660300002)(7696005)(229853002)(74316002)(476003)(8676002)(71200400001)(64756008)(66556008)(66476007)(66946007)(66446008)(6246003)(110136005)(8936002)(99286004)(6116002)(102836004)(446003)(76116006)(478600001)(14444005)(81166006)(256004)(44832011)(15650500001)(52536014)(53936002)(55016002)(33656002)(71190400001)(186003)(26005)(2906002)(9686003)(53546011)(316002)(2201001)(14454004)(81156014)(6506007)(6436002)(66066001)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3526;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u622Cf/i6MDoOcpxyk9T4nOY/VquDoWRAr2MU5ptjV1nRi0MR1BFYOkMxTcC08TStRaFLHxa51uv+Utr0qkRzX0jZDHA8V0vZQqGmpaCBpdSuYhbMQ6kqA6KXhnfp/4apgU3Hp27jYGNIfp7D5UjFcHtuZCabpfwwf7acwckA6r+PGSqGGIVgz/6h2dE3ujxyeZO1fUAlK/5XnGqxdBaT84WCqV2Se3CDl18riSQEcacljreq7Iu9rtnvXkjoBFACH9FwoEzl/qfEtMhHNwlcIlPS36qsk2EkXSGh9H02ZzGH1MrRwKcHyNGN7NKnrNamxArt2L9F5WG7jRhf/LXiJkvwFl0XcjOqZnvCFjEvSLebMFMg09w80Xyy7bW3x8RdVmjVnwgcFyvul/pLHWTBUKbPrNr/mbsVAnVHXG3/2Q=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9036aef5-504a-497a-a055-08d72d8c8ea9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 20:56:40.6478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7BYqLAxrkxJlqccmMSA1uhTBl7xRijTCM0lpRv4FFxi7IfORPAOMsxlk9tzdsh+wJ/GzqQ9HBwilNavM70o1oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3526
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1i3nwu-004GAJ-8J
Subject: Re: [tipc-discussion] [PATCH RFC 1/2] tipc: fix unlimited bundling
 of small messages
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

Hi Tuong,
Both patches are good with me. Unfortunately I could not register any measurable performance improvement, but I still think this is the right thing to do.

Acked-by: Jon



> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 29-Aug-19 07:36
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [PATCH RFC 1/2] tipc: fix unlimited bundling of small messages
> 
> We have identified a problem with the "oversubscription" policy in the link
> transmission code.
> 
> When small messages are transmitted, and the sending link has reached the
> transmit window limit, those messages will be bundled and put into the link
> backlog queue. However, bundles of data messages are counted at the
> 'CRITICAL' level, so that the counter for that level, instead of the counter for
> the real, bundled message's level is the one being increased.
> Subsequent, to-be-bundled data messages at non-CRITICAL levels continue to
> be tested against the unchanged counter for their own level, while
> contributing to an unrestrained increase at the CRITICAL backlog level.
> 
> This leaves a gap in congestion control algorithm for small messages that can
> result in starvation for other users or a "real" CRITICAL user. Even that
> eventually can lead to buffer exhaustion & link reset.
> 
> We fix this by keeping a 'target_bskb' buffer pointer at each levels, then when
> bundling, we only bundle messages at the same importance level only. This
> way, we know exactly how many slots a certain level have occupied in the
> queue, so can manage level congestion accurately.
> 
> By bundling messages at the same level, we even have more benefits. Let
> consider this:
> - One socket sends 64-byte messages at the 'CRITICAL' level;
> - Another sends 4096-byte messages at the 'LOW' level;
> 
> When a 64-byte message comes and is bundled the first time, we put the
> overhead of message bundle to it (+ 40-byte header, data copy, etc.) for later
> use, but the next message can be a 4096-byte one that cannot be bundled to
> the previous one. This means the last bundle carries only one payload message
> which is totally inefficient, as for the receiver also! Later on, another 64-byte
> message comes, now we make a new bundle and the same story repeats...
> 
> With the new bundling algorithm, this will not happen, the 64-byte messages
> will be bundled together even when the 4096-byte message(s) comes in
> between. However, if the 4096-byte messages are sent at the same level i.e.
> 'CRITICAL', the bundling algorithm will again cause the same overhead.
> 
> Also, the same will happen even with only one socket sending small messages
> at a rate close to the link transmit's one, so that, when one message is
> bundled, it's transmitted shortly. Then, another message comes, a new bundle
> is created and so on...
> 
> We will solve this issue radically by the 2nd patch of this series.
> 
> Fixes: 365ad353c256 ("tipc: reduce risk of user starvation during link
> congestion")
> Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c | 29 ++++++++++++++++++-----------  net/tipc/msg.c  |  5 +----
>  2 files changed, 19 insertions(+), 15 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index 6cc75ffd9e2c..999eab592de8
> 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -160,6 +160,7 @@ struct tipc_link {
>  	struct {
>  		u16 len;
>  		u16 limit;
> +		struct sk_buff *target_bskb;
>  	} backlog[5];
>  	u16 snd_nxt;
>  	u16 window;
> @@ -880,6 +881,7 @@ static void link_prepare_wakeup(struct tipc_link *l)
> void tipc_link_reset(struct tipc_link *l)  {
>  	struct sk_buff_head list;
> +	u32 imp;
> 
>  	__skb_queue_head_init(&list);
> 
> @@ -901,11 +903,10 @@ void tipc_link_reset(struct tipc_link *l)
>  	__skb_queue_purge(&l->deferdq);
>  	__skb_queue_purge(&l->backlogq);
>  	__skb_queue_purge(&l->failover_deferdq);
> -	l->backlog[TIPC_LOW_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_MEDIUM_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_HIGH_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_CRITICAL_IMPORTANCE].len = 0;
> -	l->backlog[TIPC_SYSTEM_IMPORTANCE].len = 0;
> +	for (imp = 0; imp <= TIPC_SYSTEM_IMPORTANCE; imp++) {
> +		l->backlog[imp].len = 0;
> +		l->backlog[imp].target_bskb = NULL;
> +	}
>  	kfree_skb(l->reasm_buf);
>  	kfree_skb(l->reasm_tnlmsg);
>  	kfree_skb(l->failover_reasm_skb);
> @@ -947,7 +948,7 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
>  	struct sk_buff_head *transmq = &l->transmq;
>  	struct sk_buff_head *backlogq = &l->backlogq;
> -	struct sk_buff *skb, *_skb, *bskb;
> +	struct sk_buff *skb, *_skb, **tskb;
>  	int pkt_cnt = skb_queue_len(list);
>  	int rc = 0;
> 
> @@ -999,19 +1000,21 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  			seqno++;
>  			continue;
>  		}
> -		if (tipc_msg_bundle(skb_peek_tail(backlogq), hdr, mtu)) {
> +		tskb = &l->backlog[imp].target_bskb;
> +		if (tipc_msg_bundle(*tskb, hdr, mtu)) {
>  			kfree_skb(__skb_dequeue(list));
>  			l->stats.sent_bundled++;
>  			continue;
>  		}
> -		if (tipc_msg_make_bundle(&bskb, hdr, mtu, l->addr)) {
> +		if (tipc_msg_make_bundle(tskb, hdr, mtu, l->addr)) {
>  			kfree_skb(__skb_dequeue(list));
> -			__skb_queue_tail(backlogq, bskb);
> -			l->backlog[msg_importance(buf_msg(bskb))].len++;
> +			__skb_queue_tail(backlogq, *tskb);
> +			l->backlog[imp].len++;
>  			l->stats.sent_bundled++;
>  			l->stats.sent_bundles++;
>  			continue;
>  		}
> +		l->backlog[imp].target_bskb = NULL;
>  		l->backlog[imp].len += skb_queue_len(list);
>  		skb_queue_splice_tail_init(list, backlogq);
>  	}
> @@ -1027,6 +1030,7 @@ static void tipc_link_advance_backlog(struct
> tipc_link *l,
>  	u16 seqno = l->snd_nxt;
>  	u16 ack = l->rcv_nxt - 1;
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
> +	u32 imp;
> 
>  	while (skb_queue_len(&l->transmq) < l->window) {
>  		skb = skb_peek(&l->backlogq);
> @@ -1037,7 +1041,10 @@ static void tipc_link_advance_backlog(struct
> tipc_link *l,
>  			break;
>  		__skb_dequeue(&l->backlogq);
>  		hdr = buf_msg(skb);
> -		l->backlog[msg_importance(hdr)].len--;
> +		imp = msg_importance(hdr);
> +		l->backlog[imp].len--;
> +		if (unlikely(skb == l->backlog[imp].target_bskb))
> +			l->backlog[imp].target_bskb = NULL;
>  		__skb_queue_tail(&l->transmq, skb);
>  		/* next retransmit attempt */
>  		if (link_is_bc_sndlink(l))
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c index
> e6d49cdc61b4..922d262e153f 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -543,10 +543,7 @@ bool tipc_msg_make_bundle(struct sk_buff **skb,
> struct tipc_msg *msg,
>  	bmsg = buf_msg(_skb);
>  	tipc_msg_init(msg_prevnode(msg), bmsg, MSG_BUNDLER, 0,
>  		      INT_H_SIZE, dnode);
> -	if (msg_isdata(msg))
> -		msg_set_importance(bmsg, TIPC_CRITICAL_IMPORTANCE);
> -	else
> -		msg_set_importance(bmsg, TIPC_SYSTEM_IMPORTANCE);
> +	msg_set_importance(bmsg, msg_importance(msg));
>  	msg_set_seqno(bmsg, msg_seqno(msg));
>  	msg_set_ack(bmsg, msg_ack(msg));
>  	msg_set_bcast_ack(bmsg, msg_bcast_ack(msg));
> --
> 2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
