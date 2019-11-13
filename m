Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9723FB21C
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Nov 2019 15:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V8w+fxrw4A1NX5MiTZXd6Cg6dNC+xTfVgheej7XF7eA=; b=hjaSpBueU4pJW0DvHtZsuc1LD
	FPwDjCQBDQa/lZhQA45WfyCyEteKgXEJAa+g12HkcHZnUpY1SYfO8f4E/12hy7VaWfdUrNrjDpV1q
	EOGf3446Pa/FuWED5xnL6iJBBmBfHqlWlNV6uhiUg/Kk3JRGT+7PqMGnZsE3rHLw7Bxd0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUtHk-0002HH-Uq; Wed, 13 Nov 2019 14:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iUtHk-0002H3-0F
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 14:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pAB986QPt3Bu0K3Kgoyp96V5EKn1+eT+w+J6vgvv0to=; b=MTDAHFVR/EDJx8JqxNj/P4F2zm
 BG/jEZZOM5CQqF0Q6yVFZ7mjDwsy2pCCcAyCCdqfw0qeEN5J1P1E5dWG+D4jiMLQCqn0CInoKSGy3
 gk+r/2+en4jwADz6NcpucBDwCcbZNQlzPLMfOjssCtcFZmYpp/c59iWhhfptloY9m6cc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pAB986QPt3Bu0K3Kgoyp96V5EKn1+eT+w+J6vgvv0to=; b=gp6FAIeCNlMkvPLpUlrWL8CB5Q
 +vEWExzg6GOqcINygWllYrX/jwI1lwck3MHs+86I48fVkYv681LbkStA8rkbPwLSQn07JIWIzIM/C
 sAH+cMeWVWPiX8X4Xoxf4I6YJDgOCNJnydNzQci9DWBL3/HcQH8FgO7uPQihaIphj2xQ=;
Received: from mail-eopbgr690058.outbound.protection.outlook.com
 ([40.107.69.58] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUtHd-00F9in-7C
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 14:06:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxU3U+ZRk8V5ZAooe0mKzTKESuLWDnplJoemlARS943oALFnh4og3xxf/kufeDOeHcFndsTnrhTyAbf1Hgm4/Y5sryyk9YcD4bfY+tgikFSbAMli1gvrkmIVXXHexREV2c8HQ7E3mRQyydws0oOPlE23Bt0OGbSvEDZM3DGXSWE6SjSDlonOVDpJgVSfthYKDQdFSrZPKC9rBvLajrIQBZ+2iA1rZX/VGKxxfFK6Cgpo3DZ952l1+1XKAaX2RXAv06vtFAQtpJZ44ix+IKwtkVnOoqt+cbK+HwSv7c1FFROWj95Uo0WTT3/Gfe9eM9AL8dErz1nNoCzjT1d+zLiyZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pAB986QPt3Bu0K3Kgoyp96V5EKn1+eT+w+J6vgvv0to=;
 b=lEOJ2CaoLg1xqFvosFqGFB7KZ0AzMoqv66AVUqtPhRwfckn0eF80TG/OumHPpUokDAq1NjvZdidmN1ynncDK/xqpL3tlcVb5jCzsHffzdhZjprg/oNwmmxPDKZGBPtYnphoJVIQsPSeR4czBZsMMmgvwK1mvjjuyq3SzvaeAaG7ZHfU6Ds86QElm/SCGfXd6eAu+gXLObNC2vfGh60RrMzsJfDliZqQ8VKZ61n3rLrzcWPIvzy06Xr/c7e7S1RDeFj4TzlJda6/Fj6iATLUd15Xj9gUdiUWwrzM0dQGr8KvdH7dgXWrsCc9IS62Z+BQsOecnUruxP/j9LEls9GRWKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pAB986QPt3Bu0K3Kgoyp96V5EKn1+eT+w+J6vgvv0to=;
 b=MrD21jat60m5aE3JEp5Vhm+6SQcU8GtiTSABQlKm6g0YWWyfHw6OciTD1urlHrMqIhCMrBshMe7Mge5Qe394BQrqQw4T30ZiSHmdAySHttELaQjjFQ8BmVk3U51/yb6mK2xFra5DzoEy59BEFm5PjINyiOW+P6WBk3hutaODt0c=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3735.namprd15.prod.outlook.com (52.132.229.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Wed, 13 Nov 2019 13:51:35 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 13:51:35 +0000
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [tipc-discussion] [net v1 1/1] tipc: fix duplicate SYN messages
 under link congestion
Thread-Index: AQHVmh5xLP1+WcELEE6DGDLKMjavx6eJC6Uw
Date: Wed, 13 Nov 2019 13:51:34 +0000
Message-ID: <CH2PR15MB357505CCE657FCA98C75730B9A760@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191113123209.22553-1-tung.q.nguyen@dektech.com.au>
In-Reply-To: <20191113123209.22553-1-tung.q.nguyen@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59781d4c-481d-45a3-3edf-08d7684098ff
x-ms-traffictypediagnostic: CH2PR15MB3735:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB373520CA6DFE94CA1A9C5B339A760@CH2PR15MB3735.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(13464003)(199004)(189003)(74316002)(64756008)(476003)(110136005)(66476007)(8676002)(71200400001)(66446008)(14454004)(446003)(71190400001)(305945005)(66946007)(99286004)(81156014)(81166006)(66556008)(316002)(76116006)(102836004)(2501003)(256004)(186003)(52536014)(11346002)(7736002)(5660300002)(14444005)(76176011)(7696005)(44832011)(26005)(486006)(6506007)(53546011)(66066001)(6246003)(3846002)(33656002)(2201001)(15650500001)(86362001)(9686003)(55016002)(229853002)(6116002)(2906002)(8936002)(25786009)(6436002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3735;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R15vk2XsQzmaELPpoZJpthcHAdU51EvBzferUemCxdYyywfHDDuUIUdO0dLK/C4HtHeITxZWYU7lMTIb5m1eIk7/4bN/IzOtxN5wGvvmQEuKVfobOe2A0+1YsgHUMUwFzHJrY9amIxgDfogB3l8F/quUWB63RPxhiWmp2p9qq1Ab1LXf5EA2tJQo1u5jnuDRRsI2WzeEp2Kiiq8UTrhaydANCyJ1pVbmLqlEDtpmDYcU/I00c84kWEaOor2hT0Cs5kQla+Su6TaHK+zKwzRXoO6KHbBnzJJMgkLXJuqjybJIrpfDAvFG6pZ5CtXgMR8Dc8PvSUWBhDUmdBw8zttQZFIHWboOE0ZdWttxUIRB04otlacsBRjz/rR306drcyYcuE0ywkASGWtsRYB0VNVY+YOhoIbdJXFQTiKFY4BMxhXCIw/s21M7bv/qPpLD/iB4
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59781d4c-481d-45a3-3edf-08d7684098ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 13:51:34.8865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s7saT1fF1FAvJzuFoOhCKIVUfBZXcKHQVyNlUsznc9ZM+J8m8qFmIvsLjbnaWdoy17eEsW9QsodXY9Lnb9qeAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3735
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.58 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iUtHd-00F9in-7C
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix duplicate SYN messages
 under link congestion
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

Good observation. However, this re-introduces a problem I discovered and fixed.
When a socket is being shutdown, and may be in DISCONNCTING state, there may still be messages in the write queue, and those must be pushed out before we can delete the socket, otherwise the connection hasn't finished its task.  I noticed this because the benchmark program didn't finish until I had fixed this. 

I think the safest solution is to actually peek the first message in the queue and return if that is a SYN message.
That way, we could also eliminate the corresponding test I do in __tipc_shutdown(), and just call push_backlog() unconditionally there.

///jon





> -----Original Message-----
> From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 13-Nov-19 07:32
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [tipc-discussion] [net v1 1/1] tipc: fix duplicate SYN messages under link congestion
> 
> Scenario:
> 1. A client socket initiates a SYN message to a listening socket.
> 2. The send link is congested, the SYN message is put in the
> send link and a wakeup message is put in wakeup queue.
> 3. The congestion situation is abated, the wakeup message is
> pulled out of the wakeup queue. Function tipc_sk_push_backlog()
> is called to send out delayed messages by Nagle. However,
> the client socket is still in CONNECTING state. So, it sends
> the SYN message in the socket write queue to the listening socket
> again.
> 4. The listening socket receives the first SYN message and creates
> first server socket. The client socket receives ACK- and establishes
> a connection to the first server socket. The client socket closes
> its connection with the first server socket.
> 5. The listening socket receives the second SYN message and creates
> second server socket. The second server socket sends ACK- to the
> client socket, but it has been closed. It results in connection
> refuse error when reading from the server socket in user space.
> 
> Solution: return from function tipc_sk_push_backlog() immediately
> if the client socket state is not ESTABLISHED.
> 
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/socket.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 5d7859a..61f9da4 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1246,13 +1246,18 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
>  static void tipc_sk_push_backlog(struct tipc_sock *tsk)
>  {
>  	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
> -	struct net *net = sock_net(&tsk->sk);
> +	struct sock *sk = &tsk->sk;
> +	struct net *net = sock_net(sk);
>  	u32 dnode = tsk_peer_node(tsk);
>  	int rc;
> 
>  	if (skb_queue_empty(txq) || tsk->cong_link_cnt)
>  		return;
> 
> +	/* Do not send SYN again after congestion */
> +	if (sk->sk_state != TIPC_ESTABLISHED)
> +		return;
> +
>  	tsk->snt_unacked += tsk->snd_backlog;
>  	tsk->snd_backlog = 0;
>  	tsk->expect_ack = true;
> --
> 2.1.4


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
