Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A43E7FC923
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 15:47:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5m9fR4d0T+0vReyjbbw21PmjqQvJhzzIuDJxifIDJbo=; b=TEWN9d5g2oSXUNSuXtsh3nUYi
	u0F6OkTgf0IbLR9terTLfo97FiyK0BpnF2NDH2AoViN9jKYpvzPXafe42G/Q7CfMIOEIB2ZC5GGYd
	ABWDqn5XuBvaUU2xO7RSWrvz53TbArWdzaILGoIC8I4QC63wpZ0r6OshvKc36/4AJafn4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVGPR-00022w-6w; Thu, 14 Nov 2019 14:47:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iVGPQ-00022Z-2g
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 14:47:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XJd2LYCWSyXDAcXnq6G60f/gTOnmztdF4IzQzJqkof0=; b=NqpAQCwh1DB76cnRMviUHnYyNB
 uzPnN6PZ/lpeAFDRpx+7jASH3Y/XIdiKHfG1rE8gc7NbADXQ41oh4aAXHRVntSx2e+MP23GTjOfmX
 g59NU79XLXMxfYCunXVZAgDgtcKUrDyrkeTeYDlaufnHNeaC7UdIn4adf7vXDH1C2bUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XJd2LYCWSyXDAcXnq6G60f/gTOnmztdF4IzQzJqkof0=; b=Tq3kM/1KMq9DnsuL66gXQoKJ4+
 fscAOk5LUYM0gdceQuzZTXz6tvOuMwx7yBXfCLAp6pPKyLbmdtNOHMpCUsj5dymVFHRJtn/CV2iaU
 hcaOCyrEIotun+tMR2nJ3KDjB5tF0BeoATjYPRmWDgC3fUEpfIlKQm3xnO6XtMIgTRLc=;
Received: from mail-eopbgr690088.outbound.protection.outlook.com
 ([40.107.69.88] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVGPK-00Gc3Z-0C
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 14:47:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I4NN/19k6c4RuxJ1z1yao6eDWTTMZNyQEXs3RSMGoUJZvsVZfBqrmL3haPizXAvm3r2dyH8hE841QcZcDul2hQgvDqYEI2QzuVM87KuYS4uSXQn6DZNDmRlfPwTOqyIL7z2QQ8MzxEmzARzSXgIZLzqRkbkwA9DAE9RmFN8+KjbTQ+Y2X5HBIbPETgmlCiYfXGAsUfI90s1iuZgcYDhWMy3beKFvkAsAVsC2BhjosJ33jVzYlfnh1dv657WeYmUqK1fr91JUOewD3OP02PInnRyZdPMNRV6L/1RlZekG6y1zVxAXpuoNo8b0+F1V4e1VbvRjZBa3px4uBekvuQms6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJd2LYCWSyXDAcXnq6G60f/gTOnmztdF4IzQzJqkof0=;
 b=N/yO2g6Kb5qDXAQvK6pnsv1u6NT72uP79RsKbYou0qJeyKUERAcMyYf3t0H9Et+tQ+fUApS+IEphasDuoEj3HgLD00nozPkLPBG52QSbujUjeKQ7Nfk7Qx99E2WHk/Rr5KnddGr45dUDsYIn6PouF7P2PVbKRpapx3T5hIYGCuuUDlMn6U1mXvqnqsEljsOMPAL+dZKXRAHZpcbFNG0YdpC4AwRfzR/uj5IEBge9C/R/4/k2QXZ30FEZQLatMOinlgmcOU7pdLSGEGe9h/IJN7b7/70ixAXJFsp9aB//uhvKSUgHObvmWrvIWrd3LAAS7LWc0/XWraoSxn9TJiL/Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJd2LYCWSyXDAcXnq6G60f/gTOnmztdF4IzQzJqkof0=;
 b=X6N+mY2RS7TgUtryIUvlCqISIQo42BoBYnT8SH9oa02XHf5j7Ydj5/l9THm4ID9ceh13XHqh2zTdCyKelTOConiwMzPpbZnLsVWKDIz0XZobQnUX5jQGhS5rboXo9FVIykZWd/YA2qrdaf68VnwGdsp7lEqHV6i1SF64OnJuK5Y=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3543.namprd15.prod.outlook.com (10.255.156.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Thu, 14 Nov 2019 14:13:14 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.023; Thu, 14 Nov 2019
 14:13:14 +0000
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [tipc-discussion] [net v2 1/1] tipc: fix duplicate SYN messages
 under link congestion
Thread-Index: AQHVmsWIhpuP9BthQ0+5a95Nf5zwiaeKtPLQ
Date: Thu, 14 Nov 2019 14:13:14 +0000
Message-ID: <CH2PR15MB3575C4792CD9441CB7DAF0329A710@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191114082823.2800-1-tung.q.nguyen@dektech.com.au>
In-Reply-To: <20191114082823.2800-1-tung.q.nguyen@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fe29bf7-467e-4bb7-323c-08d7690cca15
x-ms-traffictypediagnostic: CH2PR15MB3543:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3543547034F37867E824BF709A710@CH2PR15MB3543.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(199004)(189003)(13464003)(66556008)(2201001)(55016002)(8936002)(66446008)(66946007)(8676002)(110136005)(305945005)(99286004)(81166006)(64756008)(66476007)(229853002)(5660300002)(52536014)(6436002)(316002)(76116006)(74316002)(9686003)(7736002)(86362001)(6246003)(71200400001)(53546011)(33656002)(3846002)(478600001)(446003)(2906002)(81156014)(102836004)(11346002)(71190400001)(6506007)(25786009)(14454004)(2501003)(186003)(6116002)(486006)(476003)(44832011)(15650500001)(76176011)(256004)(14444005)(7696005)(66066001)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3543;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GwvBLJhz83BKnQFlhHp72ObOVjkxQ0ZLEYK5UFO0o9/r6GO4DGWUzmcACQDqOqEINiXVUt2gCRtIWsLhEeL/JNKVXGY8Y0mNuQHKSepFvnMb8zPjWNSAKpD4VvMczAsexZ+X2QPvoogMMDleQKeqg5ZC8MANkisLDBorNMSJ79pNbh2JKM/NPrPFoh35FNQYXsVLbh0v9jmsKYGDSqrvAsS1D4Zs/y82X/jp42TmlBBx6aKQa3wxlhamCsT2w+OCTNbZq4St9SQu8QuS0P2gKhi9KpfEIglqXnG0O1ePvWQUfz+l59KcA9Y+dObn0BvjI/S7hGUVrrOMrXMCv0RHDvPsYw3VFEpHVIBpeOkAefkI3fHG/iED3TGVscfXhODo3xZ0+qsQ/75d6LOHnmpuoBgUkZew5tDO5Ik1Zt6IvTVEzcRniSEVf+E45ysuTTC6
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fe29bf7-467e-4bb7-323c-08d7690cca15
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 14:13:14.5706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N3yPt/rqsIFW2F56KGg+AjrKogyT2+C5cgxGplIxypKCgZ+FfA03NHp6g84kVbNXDXmmUzwC4Y2s8Z6X48Q5vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3543
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.69.88 listed in list.dnswl.org]
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVGPK-00Gc3Z-0C
Subject: Re: [tipc-discussion] [net v2 1/1] tipc: fix duplicate SYN messages
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

See below.

> -----Original Message-----
> From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 14-Nov-19 03:28
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [tipc-discussion] [net v2 1/1] tipc: fix duplicate SYN messages under link congestion
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
> if there is pending SYN message in the socket write queue.
> 
> v2: use Jon's suggestion.
> 
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/socket.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 5d7859a..7a402ee 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -540,12 +540,10 @@ static void __tipc_shutdown(struct socket *sock, int error)
>  	tipc_wait_for_cond(sock, &timeout, (!tsk->cong_link_cnt &&
>  					    !tsk_conn_cong(tsk)));
> 
> -	/* Push out unsent messages or remove if pending SYN */
> -	skb = skb_peek(&sk->sk_write_queue);
> -	if (skb && !msg_is_syn(buf_msg(skb)))
> -		tipc_sk_push_backlog(tsk);
> -	else
> -		__skb_queue_purge(&sk->sk_write_queue);
> +	/* Push out delayed messages if in Nagle mode */
> +	tipc_sk_push_backlog(tsk);
> +	/* Remove pending SYN */
> +	__skb_queue_purge(&sk->sk_write_queue);
> 
>  	/* Reject all unreceived messages, except on an active connection
>  	 * (which disconnects locally & sends a 'FIN+' to peer).
> @@ -1248,11 +1246,17 @@ static void tipc_sk_push_backlog(struct tipc_sock *tsk)
>  	struct sk_buff_head *txq = &tsk->sk.sk_write_queue;
>  	struct net *net = sock_net(&tsk->sk);
>  	u32 dnode = tsk_peer_node(tsk);
> +	struct sk_buff *skb;
>  	int rc;
> 
>  	if (skb_queue_empty(txq) || tsk->cong_link_cnt)
>  		return;
> 
> +	skb = skb_peek(txq);

Move this line to before the if() clause.Then test for if (!skb ||...) instead of skb_queue_empty().
This way we should save a couple of instructions.

Acked-by:jon



> +	/* Do not send SYN again after congestion */
> +	if (msg_is_syn(buf_msg(skb)))
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
