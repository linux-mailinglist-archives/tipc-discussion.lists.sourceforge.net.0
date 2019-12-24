Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3771612A1E2
	for <lists+tipc-discussion@lfdr.de>; Tue, 24 Dec 2019 15:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lp01idLBinktI87NxSHaZ2P9OXLFS08WH5TAAsK60sc=; b=l6LM7A3jrAP//xE+fX3D41tqX
	lg/UxG0OdASzVW3heA3St7AmNZeyJeY2+vjVIIyvLrR2u0UPHWAG6jbRBzkeS9Rqp5L8n+Ip2pats
	THMvomlK09vuUEE2tUDjgeCVgLyPoH6BFmBcT2RjKjrZKsGON9HJeNCua8B+weCJG78Mc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ijkjr-0003t6-1a; Tue, 24 Dec 2019 14:00:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1ijkjo-0003sq-Ia
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 14:00:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ztD0t2uQ0keOxeV7d4mN1kfFoNxDD9XS5gT75rE0xGU=; b=Ynpp3dM2EjTWZB8DJDwV/cETqr
 2eoVqLtiqjYt489q0U38vNxF8CDVY334yoFr59Bm+PdGfcC7etF4X0uIgdX1NOhpu1pRRijKY7bZA
 ZDop28+BUT38UstwbR3IUYeIcrr4b6UX/lWgtzTk37AyIeAf+8qRdSoq8FTUIm1pcI+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ztD0t2uQ0keOxeV7d4mN1kfFoNxDD9XS5gT75rE0xGU=; b=BCFDYxkByQUrYrzR0WUvzvY6Ga
 mr1HgmbEGMIMNADcRknhfyBCceQogp5vjJppLol83XonZZS/ArqHMKYGwxKSXygeiBgd4pdPEBTa0
 bUGDIInbaySOl2K9izW6qRvBoVSqhQLWD1os2k24c2IZ1CxcZt62+cZCPDtgLPcN9/Vo=;
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ijkjh-00CbPP-1p
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Dec 2019 14:00:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C9fguOjdsy8nmWTZxclLEgKb6b+Qed2N5SgjH7dBDE848bVLL7ATNLmKG+wFAsCUoVCREQm5NLA0bCFgImDI/2oRM3rCBhlT+oLzreH/5TOprKBtNNsMPxUkP14hfhFiDRnWPWyS79zQYsGAN8Cz7+qttjDK8AtYLWuw2aDzpNhHYU4YHd0aIYXWhYdnkThCwvy+5IaM0VAFAaKFVSsDJNBmbsRkwV8Gho+ACyfZMkr3VUWrX5LhjQpuKgPNtUrtTyPQh/esXPYUpgl34twBJKAtzQ1wfFNO78eb4kt+5TX5QG7MUS5BvbIUc5ZgY0eBfvZ0JMNRJWPfRmYpKvnWKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztD0t2uQ0keOxeV7d4mN1kfFoNxDD9XS5gT75rE0xGU=;
 b=RL+efzfyYTJQTJRH6FE6o5ouioeMZRa9XJ4afHjb/qDmgXVZ6H8Hh+YGHQT//r3dwioDcy4Rj6elDFQ7pzSYt6yCMGlAXD8aFade3S/QZS7z2RkLg8ER6pptpTXHOt4suBUBP9nVSsJ00iAgJi6RGD5ylXSggQVyYjdg6H5xfImlOJQ7ml1J5qKQiOk5EfD3F1+a0Ev6xT1BKDI50mPDLiwSypZBA1HTHc9ra/W2Ma+F9sEydI66gmAJw069LNQrOjEOpZKpcf216Y1v2ZXodt465g3XFBjC6HcL5eutyjnQTl7+C6LDs4dCs+VG007qEWAWHE8fypBjUHvRtae5Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztD0t2uQ0keOxeV7d4mN1kfFoNxDD9XS5gT75rE0xGU=;
 b=Xh6Lyd0p3iUSf8Zkr/d1Bv04v5+Dvculb6A4H+/1qtLN3f5Uhczeh/93GrVzbPHiTjlIQ8MGshCf+9kaaAJGBN3ZOZev7cb/yF5zKy9IJEiv9a6K9IA4Ws4E6ibXg3ovx0r7i5JtVbtlpv6T8Pf3BXIcHM5xrWaxsPivTAvKPF0=
Received: from DB6PR07MB4277.eurprd07.prod.outlook.com (10.168.23.25) by
 DB6PR07MB3238.eurprd07.prod.outlook.com (10.175.234.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.9; Tue, 24 Dec 2019 13:28:39 +0000
Received: from DB6PR07MB4277.eurprd07.prod.outlook.com
 ([fe80::4105:4de6:e3fc:96ef]) by DB6PR07MB4277.eurprd07.prod.outlook.com
 ([fe80::4105:4de6:e3fc:96ef%5]) with mapi id 15.20.2581.007; Tue, 24 Dec 2019
 13:28:39 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [net] tipc: fix link overflow issue at socket shutdown
Thread-Index: AQHVukIn3jsLVkcZ9kGZCU9gBtK7J6fJRjYQ
Date: Tue, 24 Dec 2019 13:28:39 +0000
Message-ID: <DB6PR07MB4277BA13B3B042389F59B3899A290@DB6PR07MB4277.eurprd07.prod.outlook.com>
References: <20191224100834.30179-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20191224100834.30179-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b93f1540-e6c5-4b24-bcc9-08d78875301b
x-ms-traffictypediagnostic: DB6PR07MB3238:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <DB6PR07MB32384A2044C631D740B59A7D9A290@DB6PR07MB3238.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0261CCEEDF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(199004)(189003)(13464003)(2906002)(110136005)(33656002)(53546011)(26005)(66556008)(66946007)(71200400001)(76116006)(66476007)(64756008)(66446008)(7696005)(5660300002)(52536014)(6506007)(316002)(478600001)(86362001)(9686003)(186003)(44832011)(55016002)(81166006)(81156014)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR07MB3238;
 H:DB6PR07MB4277.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DsKqT4hJEZhqkD7sORPTanQZnEOfOLVqQiEroWB2hUHykZDU5TMhqKwjLwdcZG4fNy1wGZxKZ2Xkjn/YuvS67ENB2ZuGZVIqSJwAm/kNggfkDBpqhM6F/rQw2MZ2c6bK2skdBQQfD0uCsInb6uY/86x+OPsWTcklloY5cmXvORYb4c8KB1s0vvyUui4MFIhakYZa5UnjKcE3ASNAO5rrjLsv3JQ+l4OHTrmNtn2VtNQ6qb5yt++Adgu49cIgwidAimuK16cLN0SgmqvTfVcpFT/VFlTv00Q9U52UM6+BteI73RfCdni5ToB1aBC7ay3Hvpz6lsxVV4bYrC/jCvvGUF5TOaazC7ahjOw8nUcgEhcv+GbvPKaQve2Zip+UovdRa7RBJCpoyovTObPYOsGlwBdN+r9jGFox40VZJW9tJPQ8lwKiucG40JBHcEjqfuUcMFFwgheUq2A/XN6zdyTe6VdIklWvSwhtHU/J5dUSMiKBr74vq4PjqNFN5VLN6e5l
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b93f1540-e6c5-4b24-bcc9-08d78875301b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2019 13:28:39.5340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jNFnsMjB1hjxQWV0/QsTx0drWR14uZV3HUWppsXU1jJor9V5GI3ReqNeNCHLUlzPHH7cEtlX05OQyD6rcKytzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR07MB3238
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ijkjh-00CbPP-1p
Subject: Re: [tipc-discussion] [net] tipc: fix link overflow issue at socket
 shutdown
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

Just one minor comment below.
Acked-by: Jon Maloy <jon.maloy@ericsson.com>
 

> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 24-Dec-19 05:09
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [net] tipc: fix link overflow issue at socket shutdown
> 
> When a socket is suddenly shutdown or released, it will reject all the
> unreceived messages in its receive queue. This applies to a connected
> socket too, whereas there is only one 'FIN' message required to be sent
> back to its peer in this case.
> 
> In case there are many messages in the queue and/or some connections
> with such messages are shutdown at the same time, the link layer will
> easily get overflowed at the 'TIPC_SYSTEM_IMPORTANCE' backlog level
> because of the message rejections. As a result, the link will be taken
> down. Moreover, immediately when the link is re-established, the socket
> layer can continue to reject the messages and the same issue happens...
> 
> The commit refactors the '__tipc_shutdown()' function to only send one
> 'FIN' in the situation mentioned above. For the connectionless case, it
> is unavoidable but usually there is no rejections for such socket
> messages because they are 'dest-droppable' by default.
> 
> In addition, the new code makes the other socket states clear
> (e.g.'TIPC_LISTEN') and treats as a separate case to avoid misbehaving.
> 
> --------------
> v2: completely refactor the function;
>     cover the other socket states;
>     fix a memleak issue (- reported by 'Hoang Huu Le').
> --------------
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/socket.c | 53 ++++++++++++++++++++++++++++++++---------------------
>  1 file changed, 32 insertions(+), 21 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 41688da233ab..aa0ffd0dba50 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -287,12 +287,12 @@ static void tipc_sk_respond(struct sock *sk, struct sk_buff *skb, int err)
>   *
>   * Caller must hold socket lock
>   */
> -static void tsk_rej_rx_queue(struct sock *sk)
> +static void tsk_rej_rx_queue(struct sock *sk, int error)
>  {
>  	struct sk_buff *skb;
> 
>  	while ((skb = __skb_dequeue(&sk->sk_receive_queue)))
> -		tipc_sk_respond(sk, skb, TIPC_ERR_NO_PORT);
> +		tipc_sk_respond(sk, skb, error);
>  }
> 
>  static bool tipc_sk_connected(struct sock *sk)
> @@ -545,34 +545,45 @@ static void __tipc_shutdown(struct socket *sock, int error)
>  	/* Remove pending SYN */
>  	__skb_queue_purge(&sk->sk_write_queue);
> 
> -	/* Reject all unreceived messages, except on an active connection
> -	 * (which disconnects locally & sends a 'FIN+' to peer).
> -	 */
> -	while ((skb = __skb_dequeue(&sk->sk_receive_queue)) != NULL) {
> -		if (TIPC_SKB_CB(skb)->bytes_read) {
> -			kfree_skb(skb);
> -			continue;
> -		}
> -		if (!tipc_sk_type_connectionless(sk) &&
> -		    sk->sk_state != TIPC_DISCONNECTING) {
> -			tipc_set_sk_state(sk, TIPC_DISCONNECTING);
> -			tipc_node_remove_conn(net, dnode, tsk->portid);
> -		}
> -		tipc_sk_respond(sk, skb, error);
> +	/* Remove partial received buffer if any */

s/partial/partially/

> +	skb = skb_peek(&sk->sk_receive_queue);
> +	if (skb && TIPC_SKB_CB(skb)->bytes_read) {
> +		__skb_unlink(skb, &sk->sk_receive_queue);
> +		kfree_skb(skb);
>  	}
> 
> -	if (tipc_sk_type_connectionless(sk))
> +	/* Reject all unreceived messages if connectionless */
> +	if (tipc_sk_type_connectionless(sk)) {
> +		tsk_rej_rx_queue(sk, error);
>  		return;
> +	}
> 
> -	if (sk->sk_state != TIPC_DISCONNECTING) {
> +	switch (sk->sk_state) {
> +	case TIPC_CONNECTING:
> +	case TIPC_ESTABLISHED:
> +		tipc_set_sk_state(sk, TIPC_DISCONNECTING);
> +		tipc_node_remove_conn(net, dnode, tsk->portid);
> +		/* Send a FIN+/- to its peer */
> +		skb = __skb_dequeue(&sk->sk_receive_queue);
> +		if (skb) {
> +			__skb_queue_purge(&sk->sk_receive_queue);
> +			tipc_sk_respond(sk, skb, error);
> +			break;
> +		}
>  		skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE,
>  				      TIPC_CONN_MSG, SHORT_H_SIZE, 0, dnode,
>  				      tsk_own_node(tsk), tsk_peer_port(tsk),
>  				      tsk->portid, error);
>  		if (skb)
>  			tipc_node_xmit_skb(net, skb, dnode, tsk->portid);
> -		tipc_node_remove_conn(net, dnode, tsk->portid);
> -		tipc_set_sk_state(sk, TIPC_DISCONNECTING);
> +		break;
> +	case TIPC_LISTEN:
> +		/* Reject all SYN messages */
> +		tsk_rej_rx_queue(sk, error);
> +		break;
> +	default:
> +		__skb_queue_purge(&sk->sk_receive_queue);
> +		break;
>  	}
>  }
> 
> @@ -2639,7 +2650,7 @@ static int tipc_accept(struct socket *sock, struct socket *new_sock, int flags,
>  	 * Reject any stray messages received by new socket
>  	 * before the socket lock was taken (very, very unlikely)
>  	 */
> -	tsk_rej_rx_queue(new_sk);
> +	tsk_rej_rx_queue(new_sk, TIPC_ERR_NO_PORT);
> 
>  	/* Connect new socket to it's peer */
>  	tipc_sk_finish_conn(new_tsock, msg_origport(msg), msg_orignode(msg));
> --
> 2.13.7


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
