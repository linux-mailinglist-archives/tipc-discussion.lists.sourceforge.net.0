Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F52C6B069
	for <lists+tipc-discussion@lfdr.de>; Tue, 16 Jul 2019 22:27:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hnU2y-0002it-E3; Tue, 16 Jul 2019 20:27:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hnU2v-0002ig-W4
 for tipc-discussion@lists.sourceforge.net; Tue, 16 Jul 2019 20:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LmSjqdhhH0/ohlXFcj5ufVBg06EIq1zh/uPu0wMU948=; b=fq5vkK0d8E8lMvBXc0E6XpYVwJ
 SlC1+orEeIr5kBztbA+uQR8c1k2d+9H0eDC562DWoesJ/XFl8KEJIF5PB35rP6HTjNIguuJLDbkfk
 TSUTmaXQJzkQLi/DFOcgLBZwzsm+4PUDPtM5ss/Duq/t2NhuM7kuwlHDTTdt8QlmjkQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LmSjqdhhH0/ohlXFcj5ufVBg06EIq1zh/uPu0wMU948=; b=H76NgKdz7RoauotnJEt73M+l7l
 NgLanHXvy3vf9DdV3c8P5PUiD1EV7SF2ANiylI4KtMRNN74irfOu54GmHUDxJM1NqGb4MSqeuIOQX
 M1yd79osooi12LsHEoxCBxxjEcbzT0hgsJAUZy7DCwU/R9bvYVBsQJhlS2yOFefC9ju4=;
Received: from mail-eopbgr750050.outbound.protection.outlook.com
 ([40.107.75.50] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hnU2r-003Ykl-5z
 for tipc-discussion@lists.sourceforge.net; Tue, 16 Jul 2019 20:27:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZZKvOZUSRdKKVQg/093Ct8PGwcLfIYSIoJ8dy8JD0GzCWIca4AKQV5Qenze1sLGTa3EqMerFRc16TeS1jmraeEOdX/EsB128qZtxqaQC27+rz5DGAZqon4P7vj4YGzKYPtoOBFkAGi/5vi/ZTciwLivySFx/lL7KaRR6PrqatUICuZaUlhVo5gofEjCBmj1VZucLOHF3473LBhgrWLqq/OEr4OMzsF7J/H1mvUfk3xUlyG/NT4x7iSpY3KX+bm0aPYEbaFS3NhTG66r9OvTlCNyemoO/S+OnJJ/V7sz1MmyMW5uGpsJnSqiEw2Fcxdh1iIIqqVoT1Gp/s9XaOFHig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmSjqdhhH0/ohlXFcj5ufVBg06EIq1zh/uPu0wMU948=;
 b=GPDpRpMLWPYNasE47hM8KuDiwOWSgM2UboF/K/bJrrAb5Z2X2JP3crPYE0GEc1xLQh8c25W6Cka2ilowKx8GVRemuWlz/30c9OT5SsOGL2/hoNQ+QJzOhk7J+1EsUYp8QoQ5+j8mifaYEHVGdYZgHBQ/OvMV25perRlyiSG/lLwS0SV/TvBlkdnyRL/XJ+gs2sRmJHxrLRvzQZECQkaK9ld96jkCojdR6q86P/5OZrCiPUgfW/fDOOhVBzHeRA/DcQtVCetJ5eTIGBw8LILJE/OjvIq8n3228bV9cqif6eo1K64aDZjcMz4460A8DE/KVACPWwkKga0s6R1Gt1dLvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmSjqdhhH0/ohlXFcj5ufVBg06EIq1zh/uPu0wMU948=;
 b=SixXjoScURgEPslAXOZB/cLJkIdEV1310wQijuHb4Yrn4bmRh3rab+ot6u/tUtzzAL9U9fwvhgs9z2AKzT52B5qUybHFzRu5vxkqPelyje2qM4tTS3wsLFdJsOuuioqwLuGDzgKHWBIjbRokvoQRkXnBhsdbLrQEsMcdM+jqwLc=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3718.namprd15.prod.outlook.com (52.132.230.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 20:27:22 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 20:27:22 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: fix retransmission failure when link
 re-established
Thread-Index: AQHVO6fXHuBQAwK8EkeF96Wk73Aa5qbNsfAA
Date: Tue, 16 Jul 2019 20:27:22 +0000
Message-ID: <CH2PR15MB3575F16312E49B7F377CEF089ACE0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190716072629.3531-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20190716072629.3531-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9046cdd-d260-46a9-a992-08d70a2c01f9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3718; 
x-ms-traffictypediagnostic: CH2PR15MB3718:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB371840071D59526D51EE6C749ACE0@CH2PR15MB3718.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(346002)(376002)(39860400002)(13464003)(199004)(189003)(44832011)(68736007)(478600001)(5660300002)(186003)(486006)(2501003)(76176011)(33656002)(2201001)(81156014)(99286004)(26005)(7696005)(14444005)(102836004)(81166006)(53546011)(256004)(2906002)(55016002)(476003)(25786009)(6506007)(6246003)(86362001)(8676002)(305945005)(66946007)(11346002)(6116002)(110136005)(446003)(66556008)(66446008)(64756008)(66066001)(316002)(66476007)(7736002)(74316002)(71200400001)(8936002)(71190400001)(9686003)(229853002)(6436002)(53936002)(3846002)(14454004)(76116006)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3718;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6ru4ItDc4baZQ3oKHcV8qQYi8Fr+8hfCXuH8a24m5qLsIbcbrx4dvCyaoX2c6mvZpfa7T0Dud0hsAaaEZgHcSpWrH3GejIElMNvEiP2p8aiSOI5X9IeeEvv1lGBOKAWYjLuxy9Z5B5bKpb5C48otg141FtReMgpLgTZ8W7HTytqZN//VgxdbhqVoIg2COV1BgCDkQOYHTsdB055VH0UF4GjbGgVKHLmvNXo0BS0YpHF4/+pyFcTOMkOm6oUd7ZxcqlvJo1ofx9pS516EHn99TmyIcSZ5OaQEp34du707+jhb0BAd0Ci2+DE3tZzXiApSUWRfXf1H0mn6RThwjRmr50ctqvqUq8u66gWrQw5fWzFXv3CuL6vw8VnVge/rB9OULLs4YFM3ofco4pNHLs+9gZ6f4XlQhXNbq7LtEUhXVNw=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9046cdd-d260-46a9-a992-08d70a2c01f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 20:27:22.2363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3718
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.50 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hnU2r-003Ykl-5z
Subject: Re: [tipc-discussion] [net-next] tipc: fix retransmission failure
 when link re-established
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

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

Remember to mark this one as 'net' and not 'net-next' when you post it.


> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 16-Jul-19 03:26
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Subject: [net-next] tipc: fix retransmission failure when link re-established
> 
> Currently a link is declared stale and reset if stale limit time is longer than link
> tolerance time. But, this stale limit does not initial correctly when the link is
> resetting. This lead to a link declared as failure because reset criteria always
> passed though no packet re-transmitted when link is re-establishing.
> 
> To fix this, we set stale limit time far into the future in two places:
> reset a link and acked from peer.
> 
> Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/link.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index
> 66d3a07bc571..2ba79d451f08 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -909,6 +909,7 @@ void tipc_link_reset(struct tipc_link *l)
>  	l->silent_intv_cnt = 0;
>  	l->rst_cnt = 0;
>  	l->bc_peer_is_up = false;
> +	l->stale_limit = msecs_to_jiffies(~0);
>  	memset(&l->mon_state, 0, sizeof(l->mon_state));
>  	tipc_link_reset_stats(l);
>  }
> @@ -1510,6 +1511,7 @@ int tipc_link_rcv(struct tipc_link *l, struct sk_buff
> *skb,
> 
>  		/* Forward queues and wake up waiting users */
>  		if (likely(tipc_link_release_pkts(l, msg_ack(hdr)))) {
> +			l->stale_limit = msecs_to_jiffies(~0);
>  			tipc_link_advance_backlog(l, xmitq);
>  			if (unlikely(!skb_queue_empty(&l->wakeupq)))
>  				link_prepare_wakeup(l);
> --
> 2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
