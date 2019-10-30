Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 576E6E9BFD
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Oct 2019 14:03:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ugnm56/m2WG3Ka2p3ziSqKZ26qh9HkVMvCAlh21Ybrw=; b=EEcLhW/RgFtWjT5eHf5zmDhS0
	CNxTQ/fZLINAS/+FLosWdl2qfYMLPUlt1cyOlPV1FfvCcy8R0AMPUytDjK2aAMhqp+fTPuxMCZu2x
	fzxMIJBnJ88QMGO+BoGrw5npNsyKHYvLwil8z7guOUIeXAmKBG1PFRvQHiPpNOm/cXXyk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPncv-00054M-1c; Wed, 30 Oct 2019 13:03:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iPnct-00053w-LM
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 13:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9t148mc0fUZXl+U/FfU+oO7UrvXRZH12FDR4NzsL1uQ=; b=KHgHFrP3QZaz09oxU5mB7NfmTH
 wLWQEFLyjRt+v1+nOFt1qwru/5Q6Vi+qycHLCyXwSbmpXpFapg1dZJfwZ7J81ixjBbI1hCCsbDo1D
 JtBFZTA9XOxicNkQwEq2Ha8aE6+pF7+A6rTC3Jp1yHx6Ymy5QyTsrVGmOFcoCciAopSk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9t148mc0fUZXl+U/FfU+oO7UrvXRZH12FDR4NzsL1uQ=; b=I6CD8t9V8Ar3lA2JZIbbUOFLQp
 aOe4vwKGYnqXYO9ahX6EhdOsghK7O1cllSRbuS1tihHuaXIbpzTnoouReNtTLDoH1iE1sdp7HOYi7
 7M+iD1b6hQP1Ucqdu2REaitJ2T/1b5x0RJmAVXKMjATGfKTuc0x5iA0Tbfgc1AxioylA=;
Received: from mail-eopbgr800079.outbound.protection.outlook.com
 ([40.107.80.79] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iPncl-008iDr-Ay
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Oct 2019 13:03:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0kx/d6yvfKQf5HmAzKAsJVGC8h2m5eNhgx9d0+2L2iu60IoF6uYbGesC3yj0939bvCqWRTqxhpluQ4NmjbIkdX05+9OpbFptujFxbjCcabt9xMyxZf637zgZndqNUDSceBDlKn9PmXyZ4nl8vdsLqyajVl5pznC2FgBQgJaWbYJe+Wak8dZXup6VEGe1V8H0l8PVxNedjl9f++/YpfbIwVCyOcWlxEkO0A7FBNi14MzT5UeRstyhxBoqPj/sM/kUDYJRoVxbxfpKCRM4iHcvPPrhyUV2mqTyUXNsEU/zR2QlBXw6uRsnDFvlIW46xSTAqnfz3UFc8J+vTTqbOQzyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9t148mc0fUZXl+U/FfU+oO7UrvXRZH12FDR4NzsL1uQ=;
 b=la9ewZuPdhfK0Je2LP/vvNDeTkIyk4baXhIzUttRS6LqQdjR34DleQ7ZvZBrsNKWJPxlYzhhq9A1MR+U+LXMe/TlHWU0oiDamDz3xOMy8pU0ChITzp+UsP3vEoGFV3z+WJ7kFz2XAe8GcW3mGego4UOYIg9LxcMQ6VPHEViVMhCOVHQ94S8D5wjRhs+wXcWWK+Zfn9/EOoSzDcrC7EgVWlzT7fH8yeoGvYLt+fRcj4FpeOZ8g8ZVtqP3yV2hz1rz5PAHN2HZOR+pHo12jkavXYSMXucn2uB+6CqbPrFcTxFIlLyA68eniydCvYBiT3OwXRsJdKSmFYGt12eEYmk2UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9t148mc0fUZXl+U/FfU+oO7UrvXRZH12FDR4NzsL1uQ=;
 b=hsubGlqvW3zEOEwXIoxxUrLBohzri+DTS66n1KCJq+/mNos5PbxhcAe4YvtY5qbzO9z/JZNBqxnfAkr2+6RUSMcKMcX8FzyL7PFGUVATzO7WnHO/+Ty3ThFopkSIt29oI0AgCVb2ZmQdXJ8dsMMjcw/1cPS2CQDlumRF0aRuHaY=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3704.namprd15.prod.outlook.com (52.132.230.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Wed, 30 Oct 2019 12:46:52 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2387.028; Wed, 30 Oct 2019
 12:46:52 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, 'Jon Maloy'
 <maloy@donjonn.com>
Thread-Topic: [net-next v3 1/1] tipc: add smart nagle feature
Thread-Index: AQHVjpUWQXeeOcnY106ArY3z3gGs56dzEAUAgAAS2wA=
Date: Wed, 30 Oct 2019 12:46:52 +0000
Message-ID: <CH2PR15MB3575AD81A96CD9AC3854AE609A600@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1572379899-11198-1-git-send-email-jon.maloy@ericsson.com>
 <076a01d58f16$9a1f4250$ce5dc6f0$@dektech.com.au>
In-Reply-To: <076a01d58f16$9a1f4250$ce5dc6f0$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1dc7b48-5ff1-49ed-f3ff-08d75d373d3c
x-ms-traffictypediagnostic: CH2PR15MB3704:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB3704A9D1BA2966BAB20E40239A600@CH2PR15MB3704.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(396003)(366004)(136003)(13464003)(189003)(199004)(86362001)(8936002)(54906003)(14454004)(44832011)(76176011)(25786009)(446003)(2906002)(7696005)(33656002)(99286004)(5660300002)(476003)(486006)(11346002)(71190400001)(71200400001)(478600001)(110136005)(256004)(6436002)(74316002)(6116002)(66946007)(66066001)(66476007)(64756008)(66446008)(305945005)(76116006)(8676002)(3846002)(26005)(229853002)(7736002)(66556008)(316002)(9686003)(81156014)(4326008)(6246003)(55016002)(53546011)(102836004)(52536014)(186003)(81166006)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3704;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mkAuajjBS+y1AQIY6b8wpxYWAkEO+/i4tWNunKX93G6KozGlzEhZr8m/A9+WdRXAF6tUhFO0yDr1HKTwuLYrVtXQhurceRqGNsMA8k8vXYY8xkQTa1DCFNXEimZ0hp78uH2BkdtkmzXH+/XO9+tP++bnTMNl8NNipkxrmC9h6qxNT1zNvPWSEVkin/9ehO0yoAwzGAVLsh3OXnTtqOoiZhSQtDRIczazksUhhmHkIa4Y3H9tnYLce7l070L+lJOJ1LTQc05JYu7WBAgO4F+0u3ww7+hR9477O6enaf7OsGAEghQGQrcAPkXA3W6dkoqiywZWRuOw+UGY9PT8Rw7Xs11h4BqFWtMQ5j94BnGh4NLvorIiP5SfeH7e73kFNUOOSVpNBzIsQ0V5B+DrJbiVLNjlMk12J0MelVdxLjGpdeBj4+xrkgKY6MzhWB79soLa
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1dc7b48-5ff1-49ed-f3ff-08d75d373d3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 12:46:52.6324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qtb0h/7vZlPSFPER7u+oCBKh3jClogypz687H1ktiPiPsey5AxJBRx+xfRb/pfQs6JVcKDasbPAOW4EXYa3RSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3704
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iPncl-008iDr-Ay
Subject: Re: [tipc-discussion] [net-next v3 1/1] tipc: add smart nagle
 feature
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Tuong Lien Tong <tuong.t.lien@dektech.com.au>
> Sent: 30-Oct-19 07:39
> To: Jon Maloy <jon.maloy@ericsson.com>; 'Jon Maloy' <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang
> Huu Le <hoang.h.le@dektech.com.au>; Gordan Mihaljevic <gordan.mihaljevic@dektech.com.au>;
> ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Subject: RE: [net-next v3 1/1] tipc: add smart nagle feature
> 
> Hi Jon,
> 
> Please see below one comment from my side.
> 
> BR/Tuong
> 
> @@ -1437,16 +1492,17 @@ static int __tipc_sendstream(struct socket *sock,
> struct msghdr *m, size_t dlen)
>  	struct sock *sk = sock->sk;
>  	DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
>  	long timeout = sock_sndtimeo(sk, m->msg_flags & MSG_DONTWAIT);
> +	struct sk_buff_head *txq = &sk->sk_write_queue;
>  	struct tipc_sock *tsk = tipc_sk(sk);
>  	struct tipc_msg *hdr = &tsk->phdr;
>  	struct net *net = sock_net(sk);
> -	struct sk_buff_head pkts;
>  	u32 dnode = tsk_peer_node(tsk);
> +	int blocks = tsk->snd_backlog;
> +	int maxnagle = tsk->maxnagle;
> +	int maxpkt = tsk->max_pkt;
>  	int send, sent = 0;
>  	int rc = 0;
> 
> -	__skb_queue_head_init(&pkts);
> -
>  	if (unlikely(dlen > INT_MAX))
>  		return -EMSGSIZE;
> 
> @@ -1467,21 +1523,35 @@ static int __tipc_sendstream(struct socket *sock,
> struct msghdr *m, size_t dlen)
>  					 tipc_sk_connected(sk)));
>  		if (unlikely(rc))
>  			break;
> -
>  		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
> -		rc = tipc_msg_build(hdr, m, sent, send, tsk->max_pkt,
> &pkts);
> -		if (unlikely(rc != send))
> -			break;
> 
> -		trace_tipc_sk_sendstream(sk, skb_peek(&pkts),
> 
> [Tuong]: Should we set the 'blocks' here instead i.e. blocks =
> tsk->snd_backlog' as it can be changed if we have to release the sock &
> sleep in advance (e.g. tipc_wait_for_cond), also the 'while' statement can
> be re-run?

Yes, you are right. I'll fix this.

///jon

> 
> +		if (tsk->oneway++ >= 4 && send <= maxnagle) {
> +			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
> +			if (rc < 0)
> +				break;
> +			blocks += rc;
> +			if (blocks <= 64 && tsk->expect_ack) {
> +				tsk->snd_backlog = blocks;
> +				sent += send;
> +				break;
> +			}
> +			tsk->expect_ack = true;
> +		} else {
> +			rc = tipc_msg_build(hdr, m, sent, send, maxpkt,
> txq);
> +			if (unlikely(rc != send))
> +				break;
> +			blocks += tsk_inc(tsk, send + MIN_H_SIZE);
> +		}
> +		trace_tipc_sk_sendstream(sk, skb_peek(txq),
>  					 TIPC_DUMP_SK_SNDQ, " ");
> -		rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
> +		rc = tipc_node_xmit(net, txq, dnode, tsk->portid);
>  		if (unlikely(rc == -ELINKCONG)) {
>  			tsk->cong_link_cnt = 1;
>  			rc = 0;
>  		}
>  		if (likely(!rc)) {
> -			tsk->snt_unacked += tsk_inc(tsk, send + MIN_H_SIZE);
> +			tsk->snt_unacked += blocks;
> +			tsk->snd_backlog = 0;
>  			sent += send;
>  		}
>  	} while (sent < dlen && !rc);
> @@ -1528,6 +1598,7 @@ static void tipc_sk_finish_conn(struct tipc_sock *tsk,
> u32 peer_port,
>  	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
>  	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
