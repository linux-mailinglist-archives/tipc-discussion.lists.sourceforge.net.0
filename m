Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAC51958A9
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Mar 2020 15:10:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jHpgv-0007FS-Cq; Fri, 27 Mar 2020 14:10:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jHpgu-0007FL-4n
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 14:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3oUchTC/bjIIhJHSNwL30O2HPcQRlgD+aaMaxlPOLSg=; b=P1GmTwV4oa9SgFHqKjHFSZZK69
 EQ5BxMTiCkXxg56hLMf/cGrJTyVLUSlW2tCKWqvbIy1ZJwUtUxJ09pqEZM0GNgXjv5igLwTnoXlR5
 noCN5kHKfz4pPXk+kxx7RuElQV9zcG1aRNyBCPQ5Blfei71tBu9fzUD3kXkpSt5F9RuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3oUchTC/bjIIhJHSNwL30O2HPcQRlgD+aaMaxlPOLSg=; b=E8MEpJcWb2IYIiVTA3pmO/E0cs
 5HKbxamNlTeKOg2n0QY0FHz0JMDJLNTRcF0+2cW6voft1dzKoQutHB66BSZI3ejN+BreigrhCM/MW
 GOC8Sjsh2zKTpyhvrgwNgKbYAZi4V8dipSwF4SAy/PMqv2SnWV7iW1Yq80Tgnips+w1k=;
Received: from mail-db8eur05on2102.outbound.protection.outlook.com
 ([40.107.20.102] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jHpgj-006TQP-Lt
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 14:10:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VGRGZ8qJiVugOngaMakas1h6VRyNB9SRPClRLjwnhw14UywMQoVa/nMK0Za+5fPJSpIt9f/LcvO9SPrjpqOerHRkhWhue69gZBXKDBL86zn9ZTc1nxv5DBZxpGcbf9H0MxaP8X7PFnsh4IaxSjQ8oIX7zogaTo+BX4lqdT/6YmCJuRNzhfxatCWKBmDkq4GRgihVaQsIIQWcAh0Pp5s2oej+F4VJ8a2WXsb3kyNBwpjs1z4i/7DREwaJ8EvgHEbFUsUDh12+ReA8UT4Ljg4j/mIl+NBhbariW+DVy6fGZX5RrCM2+y5psRsYpyayLFqESDNWMe0Oima8llJqrU9g9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3oUchTC/bjIIhJHSNwL30O2HPcQRlgD+aaMaxlPOLSg=;
 b=kcv7Tp61oBn9j/QRrIVsGcj+GOPGwvrGNF+cSdI/1B/EKFl9pv6YYVWDo3gmzUD3oz/hr6zbBzrlVsgCQTQ0GNhZV55IFIsszUyv8DzUqqZJUurs6SPYT3IWt2+elPQmf5oR5I2baXZrzUBIVdTVy0faeUyGP0Eu3XyGjsKGt3secTf0gho7zS4thM/omBesVmw1D9D1wt21mMEqz09V7h+zg/xiaMUN9QOdQBwBf8Or/rbPYrT9juCFrKPmIX5R0mZXhZTxEvbytJ/sqU8oIQq6d5x7wqdU4XOye3jYgIPX6/25xtcILzbkZuqIYrVyruCgb5x5XwsObv+zAVOqXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3oUchTC/bjIIhJHSNwL30O2HPcQRlgD+aaMaxlPOLSg=;
 b=eoytePvv7fBNer0tVgvq1KCxONeJVeZJ1QJnaazt0Tsz+/U+mg0yzfRIDS0UaKFVlKb8aoL0zxQdHHhZKUCJK99jqk2GajAFg27BJy6CcaPO3yhr/lefQgQybCjlrSMYKtuxt52WUxoZF2uEjEqy/k51bGFaWrSm4ApD+r00kmw=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (20.176.4.149) by
 VI1PR05MB6413.eurprd05.prod.outlook.com (20.179.27.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Fri, 27 Mar 2020 14:10:10 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::31c3:5db4:2b4a:fcec%5]) with mapi id 15.20.2835.023; Fri, 27 Mar 2020
 14:10:10 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, Tuong Tong Lien
 <tuong.t.lien@dektech.com.au>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [PATCH RFC 2/4] tipc: add back link trace
 events
Thread-Index: AQHWBC7Jv+T4TrgYSkOnNgz+1u+ETqhccvUAgAAGoEA=
Date: Fri, 27 Mar 2020 14:10:10 +0000
Message-ID: <VI1PR05MB4605AE3B0BBE1C95A66B1297F1CC0@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20200327115628.3269-1-tuong.t.lien@dektech.com.au>
 <0722be84-6ae8-43ed-7b3f-6685fb12f495@redhat.com>
In-Reply-To: <0722be84-6ae8-43ed-7b3f-6685fb12f495@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hoang.h.le@dektech.com.au; 
x-originating-ip: [115.77.48.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb693430-e587-4bfc-d788-08d7d2588fac
x-ms-traffictypediagnostic: VI1PR05MB6413:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB6413AF2096DD9C400A7293EAF1CC0@VI1PR05MB6413.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:22;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(376002)(39850400004)(366004)(396003)(346002)(136003)(66476007)(66556008)(64756008)(9686003)(66946007)(71200400001)(316002)(76116006)(66446008)(26005)(186003)(107886003)(110136005)(33656002)(81166006)(2906002)(52536014)(8676002)(53546011)(478600001)(8936002)(81156014)(5660300002)(86362001)(55016002)(7696005)(6506007)(4326008);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: dektech.com.au does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U6Gfv59xk2wn0AessWYXMfnxT/kTDBBtHhqCZ3uIpI1zjW+g/MLW4ilz+UFd+sQ/RVfqBHAWbmthxOGic92IEZXgoFbS5j3CiW+KaQv/dTUpD+t5DwzaiNA8R5GxbTFS1jdvUxbOuKKI+nHN5uTh0Wp4KpKMhUctumcwD4e3clSDQLVd2+/gduS+SkoOa8unpt+FpXQlUy9G5b0PmMORlqRuOlEJJ105IwM1MbzmGJOxr9lFK4IlU0ou6HGcTX7I4xW7eqHETWGV4xtkFD/8QPLhV3J7QKNZoX03CEdwaA71wazx3vV1f01vNyNSoo7nBy3QLywqFj8EV0meUj+bJc9KSc/KGNf9LrZDadUWrJg+PfWEAx01ZgwRn3V5cOmusqvydiXWovJHDapsiKQ11QcrN3L9jwYkLiV5IrsXFSVcN0kH8XzX8ZFHJu18hdkACFxVyOHK7PRQJrtUHQQzz00Jo+ZpX4mg+qo97PStsfz2qyc+ECBLPl4A3mgbg6j2L5XOM3QVcLtZZhf1AGfwMw==
x-ms-exchange-antispam-messagedata: jKYTm1XBX9vQidc1AyJQHDAZJ7rhlwOembGsTAwoZJp7dfB0M5CXdV98LlF5H0rKFwB4h6hzC1ZdCfL3G9oE8T/PNL1cRmIF8ZfU83tS5cxrslnMS4FHGPqqzmZuGm2pAQ7rMhsyiyXq4ut3ohngHQ==
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: fb693430-e587-4bfc-d788-08d7d2588fac
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 14:10:10.3580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FC54Q9O0X02Vg3p5gpBgnC3r9hYZ/QS2aKd7Yqn9ccaN5RNx7BeTjR4xthxE8iDfdwS/Bolt5EYqpQjRD68u5K6PodZslO2I9xkp/QkTZAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6413
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.102 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jHpgj-006TQP-Lt
Subject: Re: [tipc-discussion] [PATCH RFC 2/4] tipc: add back link trace
 events
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Yes, I got the same results.

Hoang
-----Original Message-----
From: Jon Maloy <jmaloy@redhat.com> 
Sent: Friday, March 27, 2020 8:43 PM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek@dektech.com.au
Subject: Re: [tipc-discussion] [PATCH RFC 2/4] tipc: add back link trace events

I received [2/4], 3/4] and [4/4] of thi series but no [0/4] and [1/4].
This is the case both for my redhat account and my private account, so I 
assume the problem is at your end.

Please re-post.

///jon


On 3/27/20 7:56 AM, Tuong Lien wrote:
> In the previous commit ("tipc: add Gap ACK blocks support for broadcast
> link"), we have removed the following link trace events due to the code
> changes:
>
> - tipc_link_bc_ack
> - tipc_link_retrans
>
> This commit adds them back along with some minor changes to adapt to
> the new code.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/link.c  |  3 +++
>   net/tipc/trace.h | 13 ++++++++-----
>   2 files changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 1b60ba665504..405ccf597e59 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1517,6 +1517,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
>   	bool is_uc = !link_is_bc_sndlink(l);
>   	bool bc_has_acked = false;
>   
> +	trace_tipc_link_retrans(r, acked + 1, acked + gap, &l->transmq);
> +
>   	/* Determine Gap ACK blocks if any for the particular link */
>   	if (ga && is_uc) {
>   		/* Get the Gap ACKs, uc part */
> @@ -2423,6 +2425,7 @@ int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
>   	if (less(acked, r->acked) || (acked == r->acked && !gap && !ga))
>   		return 0;
>   
> +	trace_tipc_link_bc_ack(r, acked, gap, &l->transmq);
>   	tipc_link_advance_transmq(l, r, acked, gap, ga, xmitq, &unused, &rc);
>   
>   	tipc_link_advance_backlog(l, xmitq);
> diff --git a/net/tipc/trace.h b/net/tipc/trace.h
> index 4d8e00483afc..e7535ab75255 100644
> --- a/net/tipc/trace.h
> +++ b/net/tipc/trace.h
> @@ -299,8 +299,10 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
>   		__entry->from = f;
>   		__entry->to = t;
>   		__entry->len = skb_queue_len(tq);
> -		__entry->fseqno = msg_seqno(buf_msg(skb_peek(tq)));
> -		__entry->lseqno = msg_seqno(buf_msg(skb_peek_tail(tq)));
> +		__entry->fseqno = __entry->len ?
> +				  msg_seqno(buf_msg(skb_peek(tq))) : 0;
> +		__entry->lseqno = __entry->len ?
> +				  msg_seqno(buf_msg(skb_peek_tail(tq))) : 0;
>   	),
>   
>   	TP_printk("<%s> retrans req: [%u-%u] transmq: %u [%u-%u]\n",
> @@ -308,15 +310,16 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
>   		  __entry->len, __entry->fseqno, __entry->lseqno)
>   );
>   
> -DEFINE_EVENT(tipc_link_transmq_class, tipc_link_retrans,
> +DEFINE_EVENT_CONDITION(tipc_link_transmq_class, tipc_link_retrans,
>   	TP_PROTO(struct tipc_link *r, u16 f, u16 t, struct sk_buff_head *tq),
> -	TP_ARGS(r, f, t, tq)
> +	TP_ARGS(r, f, t, tq),
> +	TP_CONDITION(less_eq(f, t))
>   );
>   
>   DEFINE_EVENT_PRINT(tipc_link_transmq_class, tipc_link_bc_ack,
>   	TP_PROTO(struct tipc_link *r, u16 f, u16 t, struct sk_buff_head *tq),
>   	TP_ARGS(r, f, t, tq),
> -	TP_printk("<%s> acked: [%u-%u] transmq: %u [%u-%u]\n",
> +	TP_printk("<%s> acked: %u gap: %u transmq: %u [%u-%u]\n",
>   		  __entry->name, __entry->from, __entry->to,
>   		  __entry->len, __entry->fseqno, __entry->lseqno)
>   );



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
