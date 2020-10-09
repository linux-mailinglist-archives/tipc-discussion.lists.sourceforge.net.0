Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0941628810A
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Oct 2020 06:13:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kQjmA-0000ER-Lg; Fri, 09 Oct 2020 04:13:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kQjm9-0000E7-33
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 04:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1YaSUDehbW6PKIhcuPbM1NIXb2+0pw66HB5VZSovBv8=; b=YrvPjXBdU72VKvUIuvBiH5wiCG
 onBK15PnDiLLzOBPmuPK+K1xm1jZ4/Psu8gK+0stivzcOpZ85S/Feejpobp3Gj0apj/4L4fdlCz8g
 BSVY6pb2T2ZaKEOEEQ3vI2EOdtwOYyJD1kvXTCyd2NLWgLCL77oOoUbeej4YBSLKQUb8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1YaSUDehbW6PKIhcuPbM1NIXb2+0pw66HB5VZSovBv8=; b=gLvoGFj9BId7EJ41Jbt1Fz3fff
 b7OGGu01dE7GCddCsmk8+By2cmKbkplCvb1bZR38IoAi5Zrx1a2ZSN1LMhSWLyZBz8Z3HPAzAkD+P
 syU3MNllB8bVfg8ICHUhY0OrT7a6tssUEznxlWYgzMH09+EhRFU64I4rd6sTfDiUt6jY=;
Received: from mail-eopbgr60091.outbound.protection.outlook.com ([40.107.6.91]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQjm2-007vse-17
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Oct 2020 04:13:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMz/MAUnE/y8KOx6Rft4mJz9VfNC4/VJdR/NaRg2tGwiJjOGvsDdHkrlRg1RfKkPXjE6U+jQbEcyxnu2kibE9TJRmG6wcGOPWp1xEamcRwSMxsp6Lq8kJ19tlQEMYp9Ti/vlp6E7/Faj9hJNmzOSzfVTOLHH3dryxBDeTgVB8ldbMAwwVavD02fSjhakgAnbxEa7+IcX2XZ/otLfcbJhyvc7DJXU+nQyi2amyZBaF79m2suYMfyHXLcQNGiDCg4fCvPrPncSZ48xVaRw4L0jhFtWCgCo47HpY8W+zFlQaxj2D/OdJ0J0OxynbWUqbbPAHGmp6NzoQWYLJkQ/e2Kl5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1YaSUDehbW6PKIhcuPbM1NIXb2+0pw66HB5VZSovBv8=;
 b=cBZVSN3U1QTUzcZ0zWaxmnWeOkSriAC+Z6WahuYkpvtBHQ1QPUjBd3XU1Da3WpaBti/f//4OXP/gwn51iTWHd2a4ZECsd17Zx3NBmeKHbQosQeIdW7gh1pO39qGxE8o2C5a/30u+W6M2bZ+fhh6LHFuudWlD30E//y5nbOEOu5vrgKdbeUptHfjb4E1dlyLqrVw2mzH/aDP3i/ZN3Vhdl8OXu07rCspi8jRq01Dvoz0yNNHHCa2vv3l1t7qVB0LKw3EmTrWYLDwIiX9Ply6t3Rn8HtOpOE+E2p/4K78PO9N2BTWQwPdwsLDIXlPxZZCkp+SU8dxJxnoNYfBpWICuRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1YaSUDehbW6PKIhcuPbM1NIXb2+0pw66HB5VZSovBv8=;
 b=CW+DJR2hIpHU6J7toDPSt1YeA7gCwYztsPrib/3VcCcWu8wmkciFIPttQTc+aPK095NClcJnAxsBGNIxbruvebkQNqdgUsHGETZjvHj5K+bE1WIFTeCPI9Knek0n1W0yTZHOKn/8TwbqRtUlZUR9xfFowinsm5SEPCagVcoAbFU=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB7085.eurprd05.prod.outlook.com (2603:10a6:800:18e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Fri, 9 Oct
 2020 04:12:43 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3433.045; Fri, 9 Oct 2020
 04:12:42 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [net] tipc: fix NULL pointer dereference in tipc_named_rcv
Thread-Index: AQHWnUUhvciD4HDbCEW3m8IXW2vJuamN9WwAgAAJ5oCAAKeUcA==
Date: Fri, 9 Oct 2020 04:12:42 +0000
Message-ID: <VI1PR05MB46058487F5FE43F6ED539355F1080@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20201008073156.116136-1-hoang.h.le@dektech.com.au>
 <20201008102514.1184c315@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <54320213-5b9b-4648-fa6b-553d2acb298e@redhat.com>
In-Reply-To: <54320213-5b9b-4648-fa6b-553d2acb298e@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8765c2ff-9d4b-4301-98fd-08d86c0991d2
x-ms-traffictypediagnostic: VI1PR05MB7085:
x-microsoft-antispam-prvs: <VI1PR05MB7085099679825405DBFA9470F1080@VI1PR05MB7085.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PGhxsBTd4fcFF6eBKaiCk/0PiKQEv6eELoGYr4m73Xtxz5eW5L5FX7zoHwxqPXXKG5CwfyiIfD2qjFCW2g/ZOhTlik8aT6C7joKMmldHajAymUD23JVWjblSietRf3ONrE0VaZ3EkrvI/O+1hPFo1Djq48cXWpcqL2UVBuShifwoGDuMntUUQiRa4TeYcemVyvyzODCXgDQ0l/sQWoT4wgUKzdsb6oF8S9DJrn6klTYM9MNBziichXK+GgFbldIGTkdZ5Y8j19ygaeXjDhaflf4nV71QOeCEzCw4CQxWoNe5qCjwUOvSvdz5wZQms63E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(366004)(396003)(39840400004)(9686003)(4326008)(8676002)(83380400001)(76116006)(52536014)(2906002)(86362001)(5660300002)(66556008)(66476007)(66946007)(8936002)(71200400001)(66446008)(64756008)(54906003)(26005)(53546011)(6506007)(7696005)(478600001)(110136005)(33656002)(316002)(186003)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /SiZ9Iy33I475psnvND8U+sCVzKdhrbAS0Pt4a1M1sbbVvZvj4my3ZRFWpSjVbRgaJQrk5dmdVSTsZYTpqKFyEUuvPCDZDS9lyVDxpLftvpKsu+1FCn6qXoP0wjgZwVCP/m3qax2ZU6Ni/rSNx6zQH2Z8rLwRYFMV8BVg8KK6N266cjxDqqMGGkQCQoTS9dTNDwNSnubxhqug2cDpEmRlFAmUPr6yYDu23ltV6PfwFF/QiJjYSQEHGsKb3roFjb7/enQZcAmvLep03DuYaUSray0PyVeI7K+TpQD1Rvxq4LhXWQoNylnyx/iOLYrdWsTngiMqXJArcHM19Ct2NjK+TPDIzNjyeKkKxVpq47U3qod3Z7wD2YNNEsh9dPb2ivK/78hiDjBPRSiDzzzqtuOVtfK7B5Hiif0+IWlbQPOeODiacNuENGxw0yhqg9XdQqiL1Vmqku6j2J53xUPjzi/1GWu1zfZmGcbhmJH1QzBHWktFdxT2/aXWLv56PBCXvaWiAekd/3nOXAmN0be8S69YY7imdWGXGZZdb/KamB7UD5gblz4bvGK0erawr5674Qzw25EWNmkHTHO6Q2gwrnFmxqOeEaG2qJKcvcwH1p2PPeafE/Yi70elm+eH+Jex7zZeOFzTSz12aBF4rjt4WLBFQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8765c2ff-9d4b-4301-98fd-08d86c0991d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 04:12:42.8509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vcgBdWjblk7pLhfxVHCf4wqE7jzbHDNM2qNT8Pf6NBsd50liocGG4tQzT0TSpOYUftOx17Y0hqDV9JNTf9XlEU3oxEYFjlcONpaQllY5Hew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB7085
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kQjm2-007vse-17
Subject: Re: [tipc-discussion] [net] tipc: fix NULL pointer dereference in
 tipc_named_rcv
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
 <tipc-discussion@lists.sourceforge.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,  Jakub,

I tried with your comment. But looks like we got into circular locking and deadlock could happen like this:
        CPU0                    CPU1
        ----                    ----
   lock(&n->lock#2);
                                lock(&tn->nametbl_lock);
                                lock(&n->lock#2);
   lock(&tn->nametbl_lock);

  *** DEADLOCK ***

Regards,
Hoang
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Friday, October 9, 2020 1:01 AM
> To: Jakub Kicinski <kuba@kernel.org>; Hoang Huu Le <hoang.h.le@dektech.com.au>
> Cc: maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net; netdev@vger.kernel.org
> Subject: Re: [net] tipc: fix NULL pointer dereference in tipc_named_rcv
> 
> 
> 
> On 10/8/20 1:25 PM, Jakub Kicinski wrote:
> > On Thu,  8 Oct 2020 14:31:56 +0700 Hoang Huu Le wrote:
> >> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> >> index 2f9c148f17e2..fe4edce459ad 100644
> >> --- a/net/tipc/name_distr.c
> >> +++ b/net/tipc/name_distr.c
> >> @@ -327,8 +327,13 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
> >>   	struct tipc_msg *hdr;
> >>   	u16 seqno;
> >>
> >> +	spin_lock_bh(&namedq->lock);
> >>   	skb_queue_walk_safe(namedq, skb, tmp) {
> >> -		skb_linearize(skb);
> >> +		if (unlikely(skb_linearize(skb))) {
> >> +			__skb_unlink(skb, namedq);
> >> +			kfree_skb(skb);
> >> +			continue;
> >> +		}
> >>   		hdr = buf_msg(skb);
> >>   		seqno = msg_named_seqno(hdr);
> >>   		if (msg_is_last_bulk(hdr)) {
> >> @@ -338,12 +343,14 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
> >>
> >>   		if (msg_is_bulk(hdr) || msg_is_legacy(hdr)) {
> >>   			__skb_unlink(skb, namedq);
> >> +			spin_unlock_bh(&namedq->lock);
> >>   			return skb;
> >>   		}
> >>
> >>   		if (*open && (*rcv_nxt == seqno)) {
> >>   			(*rcv_nxt)++;
> >>   			__skb_unlink(skb, namedq);
> >> +			spin_unlock_bh(&namedq->lock);
> >>   			return skb;
> >>   		}
> >>
> >> @@ -353,6 +360,7 @@ static struct sk_buff *tipc_named_dequeue(struct sk_buff_head *namedq,
> >>   			continue;
> >>   		}
> >>   	}
> >> +	spin_unlock_bh(&namedq->lock);
> >>   	return NULL;
> >>   }
> >>
> >> diff --git a/net/tipc/node.c b/net/tipc/node.c
> >> index cf4b239fc569..d269ebe382e1 100644
> >> --- a/net/tipc/node.c
> >> +++ b/net/tipc/node.c
> >> @@ -1496,7 +1496,7 @@ static void node_lost_contact(struct tipc_node *n,
> >>
> >>   	/* Clean up broadcast state */
> >>   	tipc_bcast_remove_peer(n->net, n->bc_entry.link);
> >> -	__skb_queue_purge(&n->bc_entry.namedq);
> >> +	skb_queue_purge(&n->bc_entry.namedq);
> > Patch looks fine, but I'm not sure why not hold
> > spin_unlock_bh(&tn->nametbl_lock) here instead?
> >
> > Seems like node_lost_contact() should be relatively rare,
> > so adding another lock to tipc_named_dequeue() is not the
> > right trade off.
> Actually, I agree with previous speaker here. We already have the
> nametbl_lock when tipc_named_dequeue() is called, and the same lock is
> accessible from no.c where node_lost_contact() is executed. The patch
> and the code becomes simpler.
> I suggest you post a v2 of this one.
> 
> ///jon
> 
> >>   	/* Abort any ongoing link failover */
> >>   	for (i = 0; i < MAX_BEARERS; i++) {


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
