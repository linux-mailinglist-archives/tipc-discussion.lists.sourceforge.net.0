Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C26099BE49
	for <lists+tipc-discussion@lfdr.de>; Sat, 24 Aug 2019 16:44:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i1XHV-0001t7-9x; Sat, 24 Aug 2019 14:44:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1i1XHU-0001t0-AB
 for tipc-discussion@lists.sourceforge.net; Sat, 24 Aug 2019 14:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gi+FdJRcg9Kh4HK0Jnm2SB7zd7HIIvnkD6/I+x7o9+o=; b=Fir3WfyxKRBbdFKbpjq53gxzSW
 i5u5hvBvTGzV4Ofb/J7l03Mi16iyR8EckapVBkjC0bkB7gut+2BoYMtp4BDKnjPiYKlyw1nNyHdcB
 VTATL9ygvM2iLCPBkPfKdHCkqlYWtBvOIFd3DI2+uVrRX9t7Oicmi1+BfP44ZAFxJY84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gi+FdJRcg9Kh4HK0Jnm2SB7zd7HIIvnkD6/I+x7o9+o=; b=MeA+vkmcnJ6up6SXNocG2MBl7m
 ut5wk0mC84lluNwvjWaZmgLqX2ibyb1HfzbqZA3HefG0MVYWBMzem0OpKe48Rw/9oc4xFoWBK1xub
 radIs6/IZMdP5bLNkFTqVnVdtC8o97c91abDXZ3mjPIcJHjjEJt0AVnxySd5VSZwg4wc=;
Received: from mail-eopbgr780052.outbound.protection.outlook.com
 ([40.107.78.52] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1i1XHQ-00Dw1Q-PU
 for tipc-discussion@lists.sourceforge.net; Sat, 24 Aug 2019 14:44:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXmBQ+sHCz6424dTDvAcEMwoFSdvRrEdHxObryDhSMNbOv/ylKfCUz1wmXS8MGnii4wHaLSk1JHnUF3w0cGRlVu8nJ/Owl2T3aTXhUM6RD7JzZEo64szv+U+mCOScJbyYIxaJ1nsUvXQRb35TiwNEmE2oR4HXDw+/rBYECSl50vx3q9w6VgciD1jQryrVHGDobcRudi60WYVEr81wjPkQL1yhcOR4SCGFoMmTOrFyFRe/Eijn8RxUn/qtFndSrn8tWCvUUMTr4kXfWok2zz61uvTONqbHjNTRERjaunmyl+GzDQRAUIVfmo8G5oDF15y/Qy0v3ampAFFDcwd1MYA2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gi+FdJRcg9Kh4HK0Jnm2SB7zd7HIIvnkD6/I+x7o9+o=;
 b=DLCjqMyIZ1BKHMburoOeoRmZ2EmKEnePLlr0tO2VnwWrPYXkv4cdafwh+7BgI4E4GphZBZDMKjcl6lBRLvtaqobz7LV+xT3ZM4Hi7a+Syk0VTindGLOYS+Fy8hYQOJnyjORdvb8loQVKtuk+pw3lVlY/isM1MZ8U7WYGFmuegZg0enSGp8JofOSrm4t2c496yClx53X/xq5Gpefsxnmbn3Gs/oJAF456H9HWO4WA2KQaO32b63OnNyLEMq206v77PTjCaKmiCRIP16fUARLQvAuAba+apkcz9G2nM+0grkPU3aSWmiRcwjCrIxnEAxkSwzcFnljrYYRTa5PGPui7Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gi+FdJRcg9Kh4HK0Jnm2SB7zd7HIIvnkD6/I+x7o9+o=;
 b=Cw2tghQp6ew0Bh+G7vh2zInN9k2DFswoTtBLd80gxYCnbNsW+lEsfi8XvbD1VXhsWaDzAsXBTRgREzywDje1sPYyyM98xBXirbNbDNBBDYmVZXQWyvNw1A2yRRCSM48x3vpZEOCcoD8ZyA9j6wWj2u2Fh68bmIZWbLQ3ZUxmT5U=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3590.namprd15.prod.outlook.com (52.132.230.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Sat, 24 Aug 2019 14:28:54 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2%7]) with mapi id 15.20.2199.015; Sat, 24 Aug 2019
 14:28:54 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Jon Maloy <maloy@donjonn.com>
Thread-Topic: [net-next  1/1] tipc: reduce risk of wakeup queue starvation
Thread-Index: AQHVWobn2Ed6HX1bLESIQMn0hKanm6cKWNWQ
Date: Sat, 24 Aug 2019 14:28:54 +0000
Message-ID: <CH2PR15MB35753A5BEDDB5B76488936619AA70@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1566656332-17161-1-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1566656332-17161-1-git-send-email-jon.maloy@ericsson.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 440a2744-a671-47c4-e2d3-08d7289f6473
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR15MB3590; 
x-ms-traffictypediagnostic: CH2PR15MB3590:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB35908E82891AD5225D3F4F179AA70@CH2PR15MB3590.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(39860400002)(346002)(376002)(189003)(13464003)(199004)(6916009)(76176011)(7736002)(33656002)(66476007)(44832011)(256004)(66556008)(14444005)(11346002)(486006)(446003)(71190400001)(74316002)(71200400001)(316002)(66066001)(476003)(54906003)(305945005)(4326008)(8936002)(55016002)(14454004)(6436002)(86362001)(53936002)(5660300002)(25786009)(9686003)(53546011)(6506007)(26005)(102836004)(186003)(81156014)(478600001)(52536014)(8676002)(6116002)(99286004)(3846002)(2906002)(229853002)(76116006)(6246003)(7696005)(81166006)(64756008)(66446008)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3590;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eZ+OMTu1zYy937t0Z4YMuvbzXLKQSYF9TnWaTbE1Xi5uyzNju0ixFDgkkjIidFw84ZhMltCqBkbGCo6OLzJdmf/iPN0DrrS89z2k1qK7IVH0SVIG79DWZK1Hz/yi8Kb3CQSRADeExVqf59ZeOBkUT8Rf3BuKoEPNW2WqMRFdXEddjTazi6MBsKkLkJaUPsWpH0nHkpZy+Vgt/E6Nw53HsK9I7QD34WHIec5kNS2A1VFHE+xTqmUMGJ/e708O1jR7uTZzJmVpg4qZsP4Weg2ZTs0uDetXY9SX+nvymqokrmsay4R5nbQheUQtnsD41AMpMGrmz4DGiCY2UqhabGMGaoPoGmANO2D/EB2QwSF3M6Cf9RXNEPufiX8GzsiXy9h1y+VRhJJ5Ag6s8jttWIETDJ3lqVrL4f8s/4GLID/N6R0=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 440a2744-a671-47c4-e2d3-08d7289f6473
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 14:28:54.4113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W0fBORPHR0e8TLdnxgD4ZqrKa9moGmeUXASLJwniw4r80HqhqrwPpEG6w6vlmkXKUYLHUgTu0DYyFw9JgYSfEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3590
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.78.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1i1XHQ-00Dw1Q-PU
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: reduce risk of wakeup
 queue starvation
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
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Tuong,
While experimenting with byte-oriented flow control I realized that this is a very real problem that has to be fixed.
I first tried your suggestion with putting the congestion test at the end of tipc_link_xmit(), but realized that we need access to the original message header when we are scheduling a user to the wakeup queue. But this header is already gone if original the message was bundled and deleted!
Also, there is no more space in the CB area for storing the per-level counter in the bundle packets, as was my first suggestion.

So, this was the simplest solution I could come up with. It seems to work well, but seems to give a slight performance degradation. I am afraid we will have to accept that for now.

Please give feedback.

///jon



> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: 24-Aug-19 10:19
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy
> <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy
> <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Tuong Tong Lien
> <tuong.t.lien@dektech.com.au>; Gordan Mihaljevic
> <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Subject: [net-next 1/1] tipc: reduce risk of wakeup queue starvation
> 
> We have identified a problem with the "oversubscription" policy in the link
> transmission code.
> 
> When small messages are transmitted, and the sending link has reached the
> transmit window limit, those messages will be bundled and put into the link
> backlog queue. However, bundles of data messages are counted at the
> 'CRITICAL' level, so that the counter for that level, instead of the counter for
> the real, bundled message's level is the one being increased.
> Subsequent, to-be-bundled data messagea at non-CRITICAL levels continue to
> be tested against the unchanged counter for their own level, while
> contributing to an unrestrained increase at the CRITICAL backlog level.
> 
> This leaves a gap in congestion control algorithm for small messages, and may
> eventually lead to buffer exhaustion and link reset.
> 
> We fix this by adding a test for congestion at the CRITICAL level, as well as the
> existing testing for the message's own level, whenever a message is
> transmitted. We also refuse to notify any waiting users as long as congestion at
> the CRITICAL level exists.
> 
> Reported-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> ---
>  net/tipc/link.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index 6cc75ff..25a6acb 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -77,6 +77,11 @@ struct tipc_stats {
>  	u32 msg_length_profile[7]; /* used for msg. length profiling */  };
> 
> +struct tipc_backlog {
> +	u16 len;
> +	u16 limit;
> +};
> +
>  /**
>   * struct tipc_link - TIPC link data structure
>   * @addr: network address of link's peer node @@ -157,10 +162,7 @@
> struct tipc_link {
>  	/* Sending */
>  	struct sk_buff_head transmq;
>  	struct sk_buff_head backlogq;
> -	struct {
> -		u16 len;
> -		u16 limit;
> -	} backlog[5];
> +	struct tipc_backlog backlog[5];
>  	u16 snd_nxt;
>  	u16 window;
> 
> @@ -862,6 +864,9 @@ static void link_prepare_wakeup(struct tipc_link *l)
>  	for (; imp <= TIPC_SYSTEM_IMPORTANCE; imp++)
>  		avail[imp] = l->backlog[imp].limit - l->backlog[imp].len;
> 
> +	if (avail[TIPC_CRITICAL_IMPORTANCE] <= 0)
> +		return;
> +
>  	skb_queue_walk_safe(wakeupq, skb, tmp) {
>  		imp = TIPC_SKB_CB(skb)->chain_imp;
>  		if (avail[imp] <= 0)
> @@ -949,6 +954,7 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  	struct sk_buff_head *backlogq = &l->backlogq;
>  	struct sk_buff *skb, *_skb, *bskb;
>  	int pkt_cnt = skb_queue_len(list);
> +	struct tipc_backlog *bklog = l->backlog;
>  	int rc = 0;
> 
>  	if (unlikely(msg_size(hdr) > mtu)) {
> @@ -960,7 +966,9 @@ int tipc_link_xmit(struct tipc_link *l, struct
> sk_buff_head *list,
>  	}
> 
>  	/* Allow oversubscription of one data msg per source at congestion */
> -	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
> +	if (bklog[TIPC_CRITICAL_IMPORTANCE].len >=
> +	    bklog[TIPC_CRITICAL_IMPORTANCE].limit ||
> +	    bklog[imp].len >= bklog[imp].limit) {
>  		if (imp == TIPC_SYSTEM_IMPORTANCE) {
>  			pr_warn("%s<%s>, link overflow", link_rst_msg, l->name);
>  			return -ENOBUFS;
> --
> 2.1.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
