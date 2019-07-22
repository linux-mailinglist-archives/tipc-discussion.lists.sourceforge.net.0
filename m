Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E80D7028F
	for <lists+tipc-discussion@lfdr.de>; Mon, 22 Jul 2019 16:43:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hpZXT-0001Bs-Rn; Mon, 22 Jul 2019 14:43:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hpZXS-0001Bh-Pf
 for tipc-discussion@lists.sourceforge.net; Mon, 22 Jul 2019 14:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hi2S/LE47388BA3EQHoLr6KQ69+Zk+Hctyqoxp7V5ao=; b=AaBfl4PC+pRIYg4duEk6xhg+Ty
 KpQ1iBmH/wT+bHBTnZMoJBNML8SACsjaZIK2yaAPzwd5SxAZdG6ZMc8bsduH5YxbfOJRHWQZHYcDh
 5vesS2sJGVEkxkaljgILWLw8Wwlr/N61ArzE+h8vGGvZ1HACkK6+aOyjoMAvY23bZssU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hi2S/LE47388BA3EQHoLr6KQ69+Zk+Hctyqoxp7V5ao=; b=AzxJQmE/4mx7WieWGsIqA9BZhz
 2FnznEha9mGinLMsGctUEafmKx4uWSIXcHehfvelEtY95QZaQFqIWgYXtdKSdI5clvbeyM9QujAw/
 404jmLotDllnahlpVKnnWX2CCPc6woB7dUCzRt6//Xmr8VQIfI181hFHMT2N7G2hRqZE=;
Received: from mail-eopbgr690040.outbound.protection.outlook.com
 ([40.107.69.40] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hpZXO-00AqSS-NI
 for tipc-discussion@lists.sourceforge.net; Mon, 22 Jul 2019 14:43:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=muTteuA3Xju7EvDCF2E32B3n7mKOtfn5nKo3sZ4pWkcwX4cc5EkW5UBTKw1jAX19BuK4tuJ8+lrlPWICEp7sLbTo5fw+Qwo9CWsypBesIeOzcaxO6bZ4bk44nuabaxv69dEOkXOavi+7ucDSXWAbyncfhLADb8hvN0bDOt3pTH4tV1fG8Wlh+pF//t4Zt8N2nO1cbacljm7t764ToY3j3pJ6xpprdfCDd0A1JSiWoMU9uKGATDe85yJMZMHpP2E127l+xdQ5t0wtXVXoilfsC0rxVUGj/mVuJ+o+fSfxJ+vSFKLSGAHv7EGo0If+Bo7cPueN0XvzZ8ftOZ4UgPZoLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hi2S/LE47388BA3EQHoLr6KQ69+Zk+Hctyqoxp7V5ao=;
 b=XJ9Nf8gSlcNfQLqe3hGwBGuqPNhtEDWrc6y/vUB/6ZFqP7kwWBCpEdyKVbGeQX6YMIf4FVsoFQtvfEExXjWfjIoMrDEBKsK0OpswfqF1yPV8jjvNBy8s4kNrkyizy3FVOo0kExjYLsicdSYKs2ka+I6/bBzCe9rZ+0oPZdhM8PwlOth2eKcPqEk6QW9r2zBeA9ogUv6DcmcMw1RXDiENLGisQN27pwnVDeHVVp6sEO52PxOnW7Kve3MBgaQbnpZG75A6FoFAPiHfKWJOPXuyMFrKhBzRTpQmLaCOizlO8bXyktA6rNJD7BfUtTVEm01JkuNIsZa7k51iGuUbGzq+0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hi2S/LE47388BA3EQHoLr6KQ69+Zk+Hctyqoxp7V5ao=;
 b=VC73OGwcvJe4E7ebtAyYjQU/zaVUmZNNKnmCNawgaxSVO0nQLlw9jSR6dxvVfnixaMqIfcGZ/KWOh0Spguug5NZhowbZxgbc/kSdysPyZkQekZdw+80kmY/P8Jsxc088YzslJVu9JfY4tUp+NmOmgSXBPYPYLC3zjh4S8nZTudA=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3559.namprd15.prod.outlook.com (52.132.229.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Mon, 22 Jul 2019 14:27:34 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 14:27:34 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [net] tipc: fix false detection of retransmit failures
Thread-Index: AQHVPeYFIHv7+1X6Nk2vtBtflkJDsabWtweA
Date: Mon, 22 Jul 2019 14:27:34 +0000
Message-ID: <CH2PR15MB3575EF3D5A48377799EA9A7E9AC40@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190719035635.11266-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20190719035635.11266-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b522f37b-e3cd-4e19-3d44-08d70eb0bd44
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3559; 
x-ms-traffictypediagnostic: CH2PR15MB3559:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3559219DB0CBDAB6649DF35F9AC40@CH2PR15MB3559.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:167;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(199004)(189003)(13464003)(74316002)(64756008)(66556008)(66476007)(86362001)(66446008)(5660300002)(446003)(66066001)(305945005)(478600001)(7696005)(25786009)(6436002)(2501003)(68736007)(6116002)(11346002)(76116006)(3846002)(66946007)(7736002)(55016002)(9686003)(71200400001)(71190400001)(476003)(52536014)(6506007)(14444005)(256004)(2906002)(53936002)(6246003)(99286004)(33656002)(2201001)(53546011)(76176011)(186003)(44832011)(8676002)(102836004)(8936002)(316002)(110136005)(14454004)(486006)(26005)(81166006)(229853002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3559;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7GrusVh8gbMgkURKp4MoCo5UO7loM5pS0gXhtpQ9zErhCzcVjG9xtiZ4FD7GI9pqdIpjLpn5FjjgBkjAinXQ9TASXO78IBHz2FXoCbkzjvJ0Uxx68/2ZFObyOcY56oGdemj4oHUboc7vpuc2/ClA/9yPXIRcewB9K3/0HHo3cZYjyk0CHrTKkD6Ihq0BKYpnw/Qud84FHMzs+vXfgkbesU69wCzV6zxEeSKKvMtqoVTQisX0lvNiJQpoKuk1j/dEpcRdABP9R3xSk4rhXse/JA1BJm7r+XCIY8wXFsxOl8M+7SBNgUDExCTmJv4mVBSFhENvBvrVG1GzrZFd2lkk3wZMluDlccNdd31mNM4mcS61e2PZYM5lxuR8M+ELgWIeoTqMJ1VU+LXbEeo7p+3Msp24CUS/0nKclUob37Pf0A4=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b522f37b-e3cd-4e19-3d44-08d70eb0bd44
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 14:27:34.6544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3559
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.40 listed in list.dnswl.org]
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
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hpZXO-00AqSS-NI
Subject: Re: [tipc-discussion] [net] tipc: fix false detection of retransmit
 failures
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

Remember to change the prefix to 'net-next' and send it when net-next re-opens.

///jon

> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 18-Jul-19 23:57
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [net] tipc: fix false detection of retransmit failures
> 
> This commit eliminates the use of the link 'stale_limit' & 'prev_from'
> (besides the already removed - 'stale_cnt') variables in the detection of
> repeated retransmit failures as there is no proper way to initialize them to
> avoid a false detection, i.e. it is not really a retransmission failure but due to a
> garbage values in the variables.
> 
> Instead, a jiffies variable will be added to individual skbs (like the way we
> restrict the skb retransmissions) in order to mark the first skb retransmit time.
> Later on, at the next retransmissions, the timestamp will be checked to see if
> the skb in the link transmq is "too stale", that is, the link tolerance time has
> passed, so that a link reset will be ordered. Note, just checking on the first skb
> in the queue is fine enough since it must be the oldest one.
> A counter is also added to keep track the actual skb retransmissions'
> number for later checking when the failure happens.
> 
> The downside of this approach is that the skb->cb[] buffer is about to be
> exhausted, however it is always able to allocate another memory area and
> keep a reference to it when needed.
> 
> Fixes: 77cf8edbc0e7 ("tipc: simplify stale link failure criteria")
> Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c | 92 ++++++++++++++++++++++++++++++++---------------------
> ----
>  net/tipc/msg.h  |  8 +++--
>  2 files changed, 57 insertions(+), 43 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index
> 66d3a07bc571..c2c5c53cad22 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -106,8 +106,6 @@ struct tipc_stats {
>   * @transmitq: queue for sent, non-acked messages
>   * @backlogq: queue for messages waiting to be sent
>   * @snt_nxt: next sequence number to use for outbound messages
> - * @prev_from: sequence number of most previous retransmission request
> - * @stale_limit: time when repeated identical retransmits must force link
> reset
>   * @ackers: # of peers that needs to ack each packet before it can be released
>   * @acked: # last packet acked by a certain peer. Used for broadcast.
>   * @rcv_nxt: next sequence number to expect for inbound messages @@ -
> 164,9 +162,7 @@ struct tipc_link {
>  		u16 limit;
>  	} backlog[5];
>  	u16 snd_nxt;
> -	u16 prev_from;
>  	u16 window;
> -	unsigned long stale_limit;
> 
>  	/* Reception */
>  	u16 rcv_nxt;
> @@ -1044,47 +1040,53 @@ static void tipc_link_advance_backlog(struct
> tipc_link *l,
>   * link_retransmit_failure() - Detect repeated retransmit failures
>   * @l: tipc link sender
>   * @r: tipc link receiver (= l in case of unicast)
> - * @from: seqno of the 1st packet in retransmit request
>   * @rc: returned code
>   *
>   * Return: true if the repeated retransmit failures happens, otherwise
>   * false
>   */
>  static bool link_retransmit_failure(struct tipc_link *l, struct tipc_link *r,
> -				    u16 from, int *rc)
> +				    int *rc)
>  {
>  	struct sk_buff *skb = skb_peek(&l->transmq);
>  	struct tipc_msg *hdr;
> 
>  	if (!skb)
>  		return false;
> -	hdr = buf_msg(skb);
> 
> -	/* Detect repeated retransmit failures on same packet */
> -	if (r->prev_from != from) {
> -		r->prev_from = from;
> -		r->stale_limit = jiffies + msecs_to_jiffies(r->tolerance);
> -	} else if (time_after(jiffies, r->stale_limit)) {
> -		pr_warn("Retransmission failure on link <%s>\n", l->name);
> -		link_print(l, "State of link ");
> -		pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
> -			msg_user(hdr), msg_type(hdr), msg_size(hdr),
> -			msg_errcode(hdr));
> -		pr_info("sqno %u, prev: %x, src: %x\n",
> -			msg_seqno(hdr), msg_prevnode(hdr),
> msg_orignode(hdr));
> -
> -		trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
> -		trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
> -		trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
> +	if (!TIPC_SKB_CB(skb)->retr_cnt)
> +		return false;
> 
> -		if (link_is_bc_sndlink(l))
> -			*rc = TIPC_LINK_DOWN_EVT;
> +	if (!time_after(jiffies, TIPC_SKB_CB(skb)->retr_stamp +
> +			msecs_to_jiffies(r->tolerance)))
> +		return false;
> +
> +	hdr = buf_msg(skb);
> +	if (link_is_bc_sndlink(l) && !less(r->acked, msg_seqno(hdr)))
> +		return false;
> 
> +	pr_warn("Retransmission failure on link <%s>\n", l->name);
> +	link_print(l, "State of link ");
> +	pr_info("Failed msg: usr %u, typ %u, len %u, err %u\n",
> +		msg_user(hdr), msg_type(hdr), msg_size(hdr),
> msg_errcode(hdr));
> +	pr_info("sqno %u, prev: %x, dest: %x\n",
> +		msg_seqno(hdr), msg_prevnode(hdr), msg_destnode(hdr));
> +	pr_info("retr_stamp %d, retr_cnt %d\n",
> +		jiffies_to_msecs(TIPC_SKB_CB(skb)->retr_stamp),
> +		TIPC_SKB_CB(skb)->retr_cnt);
> +
> +	trace_tipc_list_dump(&l->transmq, true, "retrans failure!");
> +	trace_tipc_link_dump(l, TIPC_DUMP_NONE, "retrans failure!");
> +	trace_tipc_link_dump(r, TIPC_DUMP_NONE, "retrans failure!");
> +
> +	if (link_is_bc_sndlink(l)) {
> +		r->state = LINK_RESET;
> +		*rc = TIPC_LINK_DOWN_EVT;
> +	} else {
>  		*rc = tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
> -		return true;
>  	}
> 
> -	return false;
> +	return true;
>  }
> 
>  /* tipc_link_bc_retrans() - retransmit zero or more packets @@ -1110,7
> +1112,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link
> *r,
> 
>  	trace_tipc_link_retrans(r, from, to, &l->transmq);
> 
> -	if (link_retransmit_failure(l, r, from, &rc))
> +	if (link_retransmit_failure(l, r, &rc))
>  		return rc;
> 
>  	skb_queue_walk(&l->transmq, skb) {
> @@ -1119,11 +1121,10 @@ static int tipc_link_bc_retrans(struct tipc_link *l,
> struct tipc_link *r,
>  			continue;
>  		if (more(msg_seqno(hdr), to))
>  			break;
> -		if (link_is_bc_sndlink(l)) {
> -			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
> -				continue;
> -			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
> -		}
> +
> +		if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
> +			continue;
> +		TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
>  		_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE,
> GFP_ATOMIC);
>  		if (!_skb)
>  			return 0;
> @@ -1133,6 +1134,10 @@ static int tipc_link_bc_retrans(struct tipc_link *l,
> struct tipc_link *r,
>  		_skb->priority = TC_PRIO_CONTROL;
>  		__skb_queue_tail(xmitq, _skb);
>  		l->stats.retransmitted++;
> +
> +		/* Increase actual retrans counter & mark first time */
> +		if (!TIPC_SKB_CB(skb)->retr_cnt++)
> +			TIPC_SKB_CB(skb)->retr_stamp = jiffies;
>  	}
>  	return 0;
>  }
> @@ -1357,12 +1362,10 @@ static int tipc_link_advance_transmq(struct
> tipc_link *l, u16 acked, u16 gap,
>  	struct tipc_msg *hdr;
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
>  	u16 ack = l->rcv_nxt - 1;
> +	bool passed = false;
>  	u16 seqno, n = 0;
>  	int rc = 0;
> 
> -	if (gap && link_retransmit_failure(l, l, acked + 1, &rc))
> -		return rc;
> -
>  	skb_queue_walk_safe(&l->transmq, skb, tmp) {
>  		seqno = buf_seqno(skb);
> 
> @@ -1372,12 +1375,17 @@ static int tipc_link_advance_transmq(struct
> tipc_link *l, u16 acked, u16 gap,
>  			__skb_unlink(skb, &l->transmq);
>  			kfree_skb(skb);
>  		} else if (less_eq(seqno, acked + gap)) {
> -			/* retransmit skb */
> +			/* First, check if repeated retrans failures occurs? */
> +			if (!passed && link_retransmit_failure(l, l, &rc))
> +				return rc;
> +			passed = true;
> +
> +			/* retransmit skb if unrestricted*/
>  			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
>  				continue;
>  			TIPC_SKB_CB(skb)->nxt_retr = TIPC_UC_RETR_TIME;
> -
> -			_skb = __pskb_copy(skb, MIN_H_SIZE, GFP_ATOMIC);
> +			_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE,
> +					   GFP_ATOMIC);
>  			if (!_skb)
>  				continue;
>  			hdr = buf_msg(_skb);
> @@ -1386,6 +1394,10 @@ static int tipc_link_advance_transmq(struct
> tipc_link *l, u16 acked, u16 gap,
>  			_skb->priority = TC_PRIO_CONTROL;
>  			__skb_queue_tail(xmitq, _skb);
>  			l->stats.retransmitted++;
> +
> +			/* Increase actual retrans counter & mark first time */
> +			if (!TIPC_SKB_CB(skb)->retr_cnt++)
> +				TIPC_SKB_CB(skb)->retr_stamp = jiffies;
>  		} else {
>  			/* retry with Gap ACK blocks if any */
>  			if (!ga || n >= ga->gack_cnt)
> @@ -2577,7 +2589,7 @@ int tipc_link_dump(struct tipc_link *l, u16
> dqueues, char *buf)
>  	i += scnprintf(buf + i, sz - i, " %x", l->peer_caps);
>  	i += scnprintf(buf + i, sz - i, " %u", l->silent_intv_cnt);
>  	i += scnprintf(buf + i, sz - i, " %u", l->rst_cnt);
> -	i += scnprintf(buf + i, sz - i, " %u", l->prev_from);
> +	i += scnprintf(buf + i, sz - i, " %u", 0);
>  	i += scnprintf(buf + i, sz - i, " %u", 0);
>  	i += scnprintf(buf + i, sz - i, " %u", l->acked);
> 
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h index
> da509f0eb9ca..d7ebc9e955f6 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -102,13 +102,15 @@ struct plist;
>  #define TIPC_MEDIA_INFO_OFFSET	5
> 
>  struct tipc_skb_cb {
> -	u32 bytes_read;
> -	u32 orig_member;
>  	struct sk_buff *tail;
>  	unsigned long nxt_retr;
> -	bool validated;
> +	unsigned long retr_stamp;
> +	u32 bytes_read;
> +	u32 orig_member;
>  	u16 chain_imp;
>  	u16 ackers;
> +	u16 retr_cnt;
> +	bool validated;
>  };
> 
>  #define TIPC_SKB_CB(__skb) ((struct tipc_skb_cb *)&((__skb)->cb[0]))
> --
> 2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
