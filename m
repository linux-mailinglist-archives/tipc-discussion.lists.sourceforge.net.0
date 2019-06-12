Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8393E42AB2
	for <lists+tipc-discussion@lfdr.de>; Wed, 12 Jun 2019 17:19:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hb52P-0001fU-PK; Wed, 12 Jun 2019 15:19:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hb52N-0001fL-Qf
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jun 2019 15:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yse4/HchaahElhxrJ+lDPFFG5mnUM1kFi3nv0dFYkrY=; b=K2mq0VXKqUcqv+84ZTJ3rKfx9+
 DL3HCHQbgxbaboKO0PmRlYxRszTYtjjOnhub+xtJxZOpREKmZTAN9+J96TAFa96ELvmkxP6aT0Chy
 0ZxKV7CTcQNB17FzspYraJlxexZagOjAPc6MUwBE3UUJ5pVq+xdMv8C94AGScTDl+aTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yse4/HchaahElhxrJ+lDPFFG5mnUM1kFi3nv0dFYkrY=; b=PFi9kN6yLfPl10ApnyQeYtp4CM
 qbcjmjHX6lee1KhBw4njKGemh12XBu8FqRFS7N1xrt/rZVGtJawz0zgZXFBtC+utUdu/f9oD0ibXY
 lR+SZvaC/w3i0FzPnVevUNNjtMQ7TdxnzxyA4lDVghenwf/WdJlLhMspUdBbKdHEeHoU=;
Received: from mail-eopbgr800083.outbound.protection.outlook.com
 ([40.107.80.83] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hb52F-00AUqL-1z
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jun 2019 15:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yse4/HchaahElhxrJ+lDPFFG5mnUM1kFi3nv0dFYkrY=;
 b=odFdDO2ZCbItGtygwy/zc0iFEVsY2mUOBq2vQ6EJ+jtHohnDgHF/qkS5CHWJzpXhMkUQRn5sVabSJkzhrDhEDcCjhHl/fbvlP2hsRBZVeA0y0d5JdUpUCdd1dIUomy8Be5ASAeJXfb5FM7fiVKvuFLpfCjN3RgjgfY8qQGnpXjE=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3704.namprd15.prod.outlook.com (52.132.230.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 15:04:18 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.010; Wed, 12 Jun 2019
 15:04:18 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [PATCH RFC] tipc: include retrans failure detection for unicast
Thread-Index: AQHVIREWINydU+NO8UGHZOvIX9tuTKaYGr3g
Date: Wed, 12 Jun 2019 15:04:18 +0000
Message-ID: <CH2PR15MB3575325CF938F86330F1F25B9AEC0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190612112143.12936-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20190612112143.12936-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e44af7f9-9ef4-44c3-7c17-08d6ef473e62
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3704; 
x-ms-traffictypediagnostic: CH2PR15MB3704:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB37045C6DEFC77EA9202656F39AEC0@CH2PR15MB3704.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:126;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(136003)(39860400002)(366004)(13464003)(199004)(189003)(68736007)(66446008)(99286004)(73956011)(25786009)(6246003)(186003)(446003)(53546011)(81156014)(476003)(102836004)(7696005)(74316002)(66556008)(76176011)(6436002)(7736002)(11346002)(26005)(76116006)(6506007)(305945005)(8936002)(66476007)(66946007)(44832011)(229853002)(71200400001)(71190400001)(5660300002)(486006)(64756008)(81166006)(9686003)(2201001)(53936002)(86362001)(316002)(52536014)(55016002)(256004)(6116002)(110136005)(3846002)(478600001)(66066001)(14444005)(2906002)(2501003)(33656002)(8676002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3704;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 21lFhUpuzEcE0RKO6EG9QS3B95RSTVeX3lxFnh+bfaZIxoJo4YNu37oh7dhx4vI9AV80APWcNUfbEV31NyrpXOy2QG8Cpa1B9n9fUlatI73d1OirtLpOwesKh+31VgsCo55ZWeEgUfe2Czwa9yKKHaRX3J6DDEtW6UfhS0H/0+AvlbWpzcDgNNjyYzxQE2vcMuo+44munF+0cyKa0bOwIj0mVSBNT8g/7anZc4uHXsgDZakmw/94KZECgyauAGwavZxr1NVT1buW1fTDgJvZg5lh02i77GY+qgdChouEw2rJw+ZfY3nerV8ibrtkaGFalcuv9nTnJQEe1bydXVnaLJg+Jox4U0X/xKPTBdoCZhJCWCoGo1bjxap2gDcsG+gk1Ba9CWQlb3XYID0LwicaIdQtIW8ydQKLWfWwX64+cG0=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e44af7f9-9ef4-44c3-7c17-08d6ef473e62
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 15:04:18.6872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3704
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hb52F-00AUqL-1z
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: include retrans failure
 detection for unicast
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
I have only minor comments to this. See below.
Post this to netdev (net-next) first, and I will post my modified patch on top of it later.

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

///jon

> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 12-Jun-19 07:22
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [PATCH RFC] tipc: include retrans failure detection for unicast
> 
> In patch series, commit 9195948fbf34 ("tipc: improve TIPC throughput by
> Gap ACK blocks"), as for simplicity, the repeated retransmit failures'
> detection in the function - "tipc_link_retrans()" was kept there for broadcast
> retransmissions only.
> 
> This commit now reapplies this feature for link unicast retransmissions that has
> been done via the function - "tipc_link_advance_transmq()".
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c | 96 ++++++++++++++++++++++++++++++++++++++-----------
> --------
>  1 file changed, 65 insertions(+), 31 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index f5cd986e1e50..ffe3880a7b79
> 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -249,9 +249,9 @@ static void tipc_link_build_bc_init_msg(struct
> tipc_link *l,
>  					struct sk_buff_head *xmitq);
>  static bool tipc_link_release_pkts(struct tipc_link *l, u16 to);  static u16
> tipc_build_gap_ack_blks(struct tipc_link *l, void *data); -static void
> tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
> -				      struct tipc_gap_ack_blks *ga,
> -				      struct sk_buff_head *xmitq);
> +static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
> +				     struct tipc_gap_ack_blks *ga,
> +				     struct sk_buff_head *xmitq);
> 
>  /*
>   *  Simple non-static link routines (i.e. referenced outside this file) @@ -
> 1044,16 +1044,53 @@ static void tipc_link_advance_backlog(struct tipc_link
> *l,
>  	l->snd_nxt = seqno;
>  }
> 
> -static void link_retransmit_failure(struct tipc_link *l, struct sk_buff *skb)
> +/**
> + * link_retransmit_failure() - Detect if retransmit failures repeated

"Detect repeated retransmit failures"

> + * @l: tipc link sender
> + * @r: tipc link receiver (= l in case of unicast)
> + * @from: seqno of the 1st packet in the retransmit request
> + * @rc: returned code
> + *
> + * Return: true if the repeated retransmit failures happen, otherwise
s/happen/happens/

> + * false
> + */
> +static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
> +				    u16 from, int *rc)
>  {
> -	struct tipc_msg *hdr = buf_msg(skb);
> +	struct sk_buff *skb = skb_peek(&l->transmq);
> +	struct tipc_msg *hdr;
> 
> -	pr_warn("Retransmission failure on link <%s>\n", l->name);
> -	link_print(l, "State of link ");
> -	pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
> -		msg_user(hdr), msg_type(hdr), msg_size(hdr),
> msg_errcode(hdr));
> -	pr_info("sqno %u, prev: %x, src: %x\n",
> -		msg_seqno(hdr), msg_prevnode(hdr), msg_orignode(hdr));
> +	if (!skb)
> +		return false;
> +
> +	hdr = buf_msg(skb);
> +
> +	/* Detect repeated retransmit failures on same packet */
> +	if (r->prev_from != from) {
> +		r->prev_from = from;
> +		r->stale_limit = jiffies + msecs_to_jiffies(r->tolerance);
> +		r->stale_cnt = 0;
> +	} else if (++r->stale_cnt > 99 && time_after(jiffies, r->stale_limit)) {
> +		pr_warn("Retransmission failure on link <%s>\n", l->name);
> +			link_print(l, "State of link ");
> +		pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
> +			msg_user(hdr), msg_type(hdr),
> +			msg_size(hdr), msg_errcode(hdr));
> +		pr_info("sqno %u, prev: %x, src: %x\n",
> +			msg_seqno(hdr), msg_prevnode(hdr),
> msg_orignode(hdr));
> +
> +		trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
> +		trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
> +		trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
> +
> +		if (link_is_bc_sndlink(l))
> +			*rc = TIPC_LINK_DOWN_EVT;
> +
> +		*rc = tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
> +		return true;
> +	}
> +
> +	return false;
>  }
> 
>  /* tipc_link_retrans() - retransmit one or more packets @@ -1062,6 +1099,8

"zero ore more" is more correct here.

> @@ static void link_retransmit_failure(struct tipc_link *l, struct sk_buff *skb)
>   * @from: retransmit from (inclusive) this sequence number
>   * @to: retransmit to (inclusive) this sequence number
>   * xmitq: queue for accumulating the retransmitted packets
> + *
> + * Note: this retrans is for broadcast only!
>   */
>  static int tipc_link_retrans(struct tipc_link *l, struct tipc_link *r,
>  			     u16 from, u16 to, struct sk_buff_head *xmitq) @@ -

Since this one now is used only for broadcast, I suggest we rename it to tipc_link_bc_retrans(), as per convention elsewhere.


> 1070,6 +1109,7 @@ static int tipc_link_retrans(struct tipc_link *l, struct
> tipc_link *r,
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
>  	u16 ack = l->rcv_nxt - 1;
>  	struct tipc_msg *hdr;
> +	int rc = 0;
> 
>  	if (!skb)
>  		return 0;
> @@ -1077,20 +1117,9 @@ static int tipc_link_retrans(struct tipc_link *l,
> struct tipc_link *r,
>  		return 0;
> 
>  	trace_tipc_link_retrans(r, from, to, &l->transmq);
> -	/* Detect repeated retransmit failures on same packet */
> -	if (r->prev_from != from) {
> -		r->prev_from = from;
> -		r->stale_limit = jiffies + msecs_to_jiffies(r->tolerance);
> -		r->stale_cnt = 0;
> -	} else if (++r->stale_cnt > 99 && time_after(jiffies, r->stale_limit)) {
> -		link_retransmit_failure(l, skb);
> -		trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
> -		trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
> -		trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
> -		if (link_is_bc_sndlink(l))
> -			return TIPC_LINK_DOWN_EVT;
> -		return tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
> -	}
> +
> +	if (link_retransmit_failure(l, r, from, &rc))
> +		return rc;
> 
>  	skb_queue_walk(&l->transmq, skb) {
>  		hdr = buf_msg(skb);
> @@ -1325,16 +1354,19 @@ static u16 tipc_build_gap_ack_blks(struct
> tipc_link *l, void *data)
>   * @ga: buffer pointer to Gap ACK blocks from peer
>   * @xmitq: queue for accumulating the retransmitted packets if any
>   */
> -static void tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16
> gap,
> -				      struct tipc_gap_ack_blks *ga,
> -				      struct sk_buff_head *xmitq)
> +static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
> +				     struct tipc_gap_ack_blks *ga,
> +				     struct sk_buff_head *xmitq)
>  {
>  	struct sk_buff *skb, *_skb, *tmp;
>  	struct tipc_msg *hdr;
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
>  	u16 ack = l->rcv_nxt - 1;
> -	u16 seqno;
> -	u16 n = 0;
> +	u16 seqno, n = 0;
> +	int rc = 0;
> +
> +	if (gap && link_retransmit_failure(l, l, acked + 1, &rc))
> +		return rc;
> 
>  	skb_queue_walk_safe(&l->transmq, skb, tmp) {
>  		seqno = buf_seqno(skb);
> @@ -1369,6 +1401,8 @@ static void tipc_link_advance_transmq(struct
> tipc_link *l, u16 acked, u16 gap,
>  			goto next_gap_ack;
>  		}
>  	}
> +
> +	return 0;
>  }
> 
>  /* tipc_link_build_state_msg: prepare link state message for transmission
> @@ -1919,7 +1953,7 @@ static int tipc_link_proto_rcv(struct tipc_link *l,
> struct sk_buff *skb,
>  			tipc_link_build_proto_msg(l, STATE_MSG, 0, reply,
>  						  rcvgap, 0, 0, xmitq);
> 
> -		tipc_link_advance_transmq(l, ack, gap, ga, xmitq);
> +		rc = tipc_link_advance_transmq(l, ack, gap, ga, xmitq);
> 
>  		/* If NACK, retransmit will now start at right position */
>  		if (gap)
> --
> 2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
