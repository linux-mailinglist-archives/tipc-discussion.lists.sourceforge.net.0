Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C506E7C43
	for <lists+tipc-discussion@lfdr.de>; Mon, 28 Oct 2019 23:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C7j68bCntpuBwR5FtIobxGln5yw26qV4vdzOX4wegMs=; b=D3gzTRXV17TE1s9aWTJhoNrHf
	o7def84wZ1CqOoqvLZP4U/1JshE0dHOw2TsOtqxHiYk5Cx35W2VZUn1elx727vEFDZ1jc5lJW78pE
	B1RCgqlT5r3YiMrSQYxwKLWU+PzvfFCDd8UJYaVKnE5UwzcZhM0iSHhBd2zBTY8kG3ZaQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPDQV-0003Yg-6R; Mon, 28 Oct 2019 22:23:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iPDQS-0003YM-VQ
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Oct 2019 22:23:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I0S8hdIKQiTP8qBS31E+5QqA6xQncg/7h+MYh/eY7/U=; b=EgolJL9TjvvowkKF5uAP7ajdkR
 o+pkfyqpcF/nuckOvxaIL/E3e/e3KlvX4X05aKZuT4LXfiX+6cBtjIwg9aeWAGsarc9rR2kmNAnOk
 pXHxwzKYlNtSRDbFllw+X1t82njcGOYX5GvPOt0gWePdhK2kdUSP3bL89sC1PFByK7fI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I0S8hdIKQiTP8qBS31E+5QqA6xQncg/7h+MYh/eY7/U=; b=G886JS8wHV3TpE7v9zBteuBjpc
 9IGZmDWQEyTpxKLKf8iK5LbOoNqBL9L971O5FBNTnFqrFHpu8PwrlWW8dIYyQARYSGOz+FfyO1s9o
 F4XFKl9JL++3/7wrAAB9OiWlg4eLRC5AkvOUa/A9xt2PBlKyfLtXmyymwzXQjby/OLeY=;
Received: from mail-eopbgr680067.outbound.protection.outlook.com
 ([40.107.68.67] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPDQL-004YSW-Gj
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Oct 2019 22:23:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UMlgl0Xz6SK0fnI01fyxRzXkqdFLqZXAU64hkyp0Ea3DTY29m+CQUSIVssjMVxbv5ET8dvL2MpPY9LYGLq4XTTUtpv+mQRwN42zLxmBANQiIrV3LlSJnmu0WWxGW6l1kiAke3ZPfUE95O9XjNFUlDD232iWqJBCmhLNuKJ8UbQHLiU1dKIoTo/ak/xnFlcNHue/mpnqucbmDM32uILpJbUVNClyJmg40r5sldtztdI47f37yNguIg5EPVXLxN8Do9UE4s04RPqpwgjQpB4qHrGymxIFVK5P3yQmZ6wS1iExRS8RwqXXmrLFu6FBp94X4amTH17rhcDSOw+UfK0huGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I0S8hdIKQiTP8qBS31E+5QqA6xQncg/7h+MYh/eY7/U=;
 b=cD9NWknO3fc9VJ/v70b1ai9JI6ZkAG7qGMTh//EMliCweUld7BpoivZ22o9PfTb1Q43I4RVUHtyBLDs+g5vugy8xFn51HXHvTB83lGnpsgjWEbBdd4yK0cw0BZXEWO4dVDAOuKAYEKw/ijbiQ+RJUW+vH63lJR7ZDk2jb0t4VZR/UtOB6LcLwhFihA+H9Ya4vhmUU6pWo+RUege8TrlI/NUPXhUHnaEIz18QdELxlRw5B5qI2DEDPiNeYmPA/WctzacN6iyfoQv5VcXOQwSKAGo4TJQmoDXkHQK2fvgdq1158rGZ8d6adN0grdY8WilnZT/d28jiWJzDzxfCK1gSjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I0S8hdIKQiTP8qBS31E+5QqA6xQncg/7h+MYh/eY7/U=;
 b=TVQFaxFm/Zj+2cfrTcXrsl2Wgy/s2W5PUVOofrYwtgWxp5SYiQ8XMsklnEF+5wwvFHXkjeJChCx2eQ83mgqg7g/dZ6zablx5ucY7teXG1pR0TX8tBSR4IOYrrj2CUn40dFOIcY+1+hXnsUFWPiJ5Zh9IgI3YWwRBqUKUMJJKRQg=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3526.namprd15.prod.outlook.com (52.132.230.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Mon, 28 Oct 2019 21:50:23 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2387.025; Mon, 28 Oct 2019
 21:50:23 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
Thread-Topic: [net-next v4] tipc: improve throughput between nodes in netns
Thread-Index: AQHVjXxnoBmtilyL7UaiQ+zEE38iLKdwlo2w
Date: Mon, 28 Oct 2019 21:50:23 +0000
Message-ID: <CH2PR15MB35750B09BFFB48322B3FE5169A660@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191028104044.7605-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191028104044.7605-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c93eff5-fcf0-480b-64d2-08d75bf0d5b9
x-ms-traffictypediagnostic: CH2PR15MB3526:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB352660D4B53F9A0806E061569A660@CH2PR15MB3526.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:551;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(13464003)(199004)(189003)(476003)(486006)(3846002)(6116002)(53546011)(5660300002)(44832011)(26005)(102836004)(30864003)(316002)(110136005)(76176011)(7696005)(229853002)(11346002)(186003)(446003)(52536014)(25786009)(99286004)(6436002)(71200400001)(9686003)(55016002)(8936002)(2906002)(66446008)(76116006)(66476007)(66946007)(81166006)(81156014)(8676002)(478600001)(256004)(14454004)(6246003)(66556008)(64756008)(14444005)(305945005)(2201001)(74316002)(7736002)(33656002)(6506007)(86362001)(2501003)(71190400001)(5024004)(66066001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3526;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u03bEMnDPFWqvVaA8QUKj5qEsMMQrLlBhEUv0PMEqogBu+SUwhATYjV6ffUtsOd4/OlG3naXRbO8suWnptey1FYSCXRYstEV9wtmD8j8ZGI1XMdW90YYZTEmVUc4FQHMESjRxYMeGTvP69++VFXuzP6XnjG0pvQeydjQCanYEC9vcsAoZ8Q1KwmluXxzkCkmG33r46irgLmtLNFiM2lpSE3IhXKCfdTZROwyC1uc5Xyyd4+RV9LAmkgFbce0g5jwtxZOoVrVF58pSfdRIAwKIdqsqM2HqAelvAqEKZjh7IqBgzyB/1gJllhFbpOTI9yXOgpqaAD1jvNuHQcgaLUqYw/BpvM26Z30EbDxpJh5LePGLnfMKgnha6hQpKKgwrCxP5R1R5Wl3RtOvUJhDwiQmMms+RSeBQVof+m7pYMuIcFJgYqETX47SduzLdV9Wgrm
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c93eff5-fcf0-480b-64d2-08d75bf0d5b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 21:50:23.0820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WSLUey9+wHtFXtEt7fnmAleDxF2AZdpeF9Y6tJ9jkNgrHDSxYT/BeCH0+k5gYwKYDl2q8WSH95VnGOYJhMV7OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3526
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iPDQL-004YSW-Gj
Subject: Re: [tipc-discussion] [net-next v4] tipc: improve throughput
 between nodes in netns
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

Hi Hoang,
Sorry that my review took some time. To me this looks safe, as the pointers now will be cleared before the name space disappears.
I suggest you post this to netdev and then we'll see if Eric or anybody else still have objections.

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

///jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 28-Oct-19 06:41
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com
> Subject: [net-next v4] tipc: improve throughput between nodes in netns
> 
> Currently, TIPC transports intra-node user data messages directly
> socket to socket, hence shortcutting all the lower layers of the
> communication stack. This gives TIPC very good intra node performance,
> both regarding throughput and latency.
> 
> We now introduce a similar mechanism for TIPC data traffic across
> network namespaces located in the same kernel. On the send path, the
> call chain is as always accompanied by the sending node's network name
> space pointer. However, once we have reliably established that the
> receiving node is represented by a namespace on the same host, we just
> replace the namespace pointer with the receiving node/namespace's
> ditto, and follow the regular socket receive patch though the receiving
> node. This technique gives us a throughput similar to the node internal
> throughput, several times larger than if we let the traffic go though
> the full network stacks. As a comparison, max throughput for 64k
> messages is four times larger than TCP throughput for the same type of
> traffic.
> 
> To meet any security concerns, the following should be noted.
> 
> - All nodes joining a cluster are supposed to have been be certified
> and authenticated by mechanisms outside TIPC. This is no different for
> nodes/namespaces on the same host; they have to auto discover each
> other using the attached interfaces, and establish links which are
> supervised via the regular link monitoring mechanism. Hence, a kernel
> local node has no other way to join a cluster than any other node, and
> have to obey to policies set in the IP or device layers of the stack.
> 
> - Only when a sender has established with 100% certainty that the peer
> node is located in a kernel local namespace does it choose to let user
> data messages, and only those, take the crossover path to the receiving
> node/namespace.
> 
> - If the receiving node/namespace is removed, its namespace pointer
> is invalidated at all peer nodes, and their neighbor link monitoring
> will eventually note that this node is gone.
> 
> - To ensure the "100% certainty" criteria, and prevent any possible
> spoofing, received discovery messages must contain a proof that the
> sender knows a common secret. We use the hash mix of the sending
> node/namespace for this purpose, since it can be accessed directly by
> all other namespaces in the kernel. Upon reception of a discovery
> message, the receiver checks this proof against all the local
> namespaces'hash_mix:es. If it finds a match, that, along with a
> matching node id and cluster id, this is deemed sufficient proof that
> the peer node in question is in a local namespace, and a wormhole can
> be opened.
> 
> - We should also consider that TIPC is intended to be a cluster local
> IPC mechanism (just like e.g. UNIX sockets) rather than a network
> protocol, and hence we think it can justified to allow it to shortcut the
> lower protocol layers.
> 
> Regarding traceability, we should notice that since commit 6c9081a3915d
> ("tipc: add loopback device tracking") it is possible to follow the node
> internal packet flow by just activating tcpdump on the loopback
> interface. This will be true even for this mechanism; by activating
> tcpdump on the involved nodes' loopback interfaces their inter-name
> space messaging can easily be tracked.
> 
> v2:
> - update 'net' pointer when node left/rejoined
> v3:
> - grab read/write lock when using node ref obj
> v4:
> - clone traffics between netns to loopback
> 
> Suggested-by: Jon Maloy <jon.maloy@ericsson.com>
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/core.c       |  16 +++++
>  net/tipc/core.h       |   6 ++
>  net/tipc/discover.c   |   4 +-
>  net/tipc/msg.h        |  14 ++++
>  net/tipc/name_distr.c |   2 +-
>  net/tipc/node.c       | 155 ++++++++++++++++++++++++++++++++++++++++--
>  net/tipc/node.h       |   5 +-
>  net/tipc/socket.c     |   6 +-
>  8 files changed, 197 insertions(+), 11 deletions(-)
> 
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 23cb379a93d6..ab648dd150ee 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -105,6 +105,15 @@ static void __net_exit tipc_exit_net(struct net *net)
>  	tipc_sk_rht_destroy(net);
>  }
> 
> +static void __net_exit tipc_pernet_pre_exit(struct net *net)
> +{
> +	tipc_node_pre_cleanup_net(net);
> +}
> +
> +static struct pernet_operations tipc_pernet_pre_exit_ops = {
> +	.pre_exit = tipc_pernet_pre_exit,
> +};
> +
>  static struct pernet_operations tipc_net_ops = {
>  	.init = tipc_init_net,
>  	.exit = tipc_exit_net,
> @@ -151,6 +160,10 @@ static int __init tipc_init(void)
>  	if (err)
>  		goto out_pernet_topsrv;
> 
> +	err = register_pernet_subsys(&tipc_pernet_pre_exit_ops);
> +	if (err)
> +		goto out_register_pernet_subsys;
> +
>  	err = tipc_bearer_setup();
>  	if (err)
>  		goto out_bearer;
> @@ -158,6 +171,8 @@ static int __init tipc_init(void)
>  	pr_info("Started in single node mode\n");
>  	return 0;
>  out_bearer:
> +	unregister_pernet_subsys(&tipc_pernet_pre_exit_ops);
> +out_register_pernet_subsys:
>  	unregister_pernet_device(&tipc_topsrv_net_ops);
>  out_pernet_topsrv:
>  	tipc_socket_stop();
> @@ -177,6 +192,7 @@ static int __init tipc_init(void)
>  static void __exit tipc_exit(void)
>  {
>  	tipc_bearer_cleanup();
> +	unregister_pernet_subsys(&tipc_pernet_pre_exit_ops);
>  	unregister_pernet_device(&tipc_topsrv_net_ops);
>  	tipc_socket_stop();
>  	unregister_pernet_device(&tipc_net_ops);
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 60d829581068..8776d32a4a47 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -59,6 +59,7 @@
>  #include <net/netns/generic.h>
>  #include <linux/rhashtable.h>
>  #include <net/genetlink.h>
> +#include <net/netns/hash.h>
> 
>  struct tipc_node;
>  struct tipc_bearer;
> @@ -185,6 +186,11 @@ static inline int in_range(u16 val, u16 min, u16 max)
>  	return !less(val, min) && !more(val, max);
>  }
> 
> +static inline u32 tipc_net_hash_mixes(struct net *net, int tn_rand)
> +{
> +	return net_hash_mix(&init_net) ^ net_hash_mix(net) ^ tn_rand;
> +}
> +
>  #ifdef CONFIG_SYSCTL
>  int tipc_register_sysctl(void);
>  void tipc_unregister_sysctl(void);
> diff --git a/net/tipc/discover.c b/net/tipc/discover.c
> index c138d68e8a69..b043e8c6397a 100644
> --- a/net/tipc/discover.c
> +++ b/net/tipc/discover.c
> @@ -94,6 +94,7 @@ static void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
>  	msg_set_dest_domain(hdr, dest_domain);
>  	msg_set_bc_netid(hdr, tn->net_id);
>  	b->media->addr2msg(msg_media_addr(hdr), &b->addr);
> +	msg_set_peer_net_hash(hdr, tipc_net_hash_mixes(net, tn->random));
>  	msg_set_node_id(hdr, tipc_own_id(net));
>  }
> 
> @@ -242,7 +243,8 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
>  	if (!tipc_in_scope(legacy, b->domain, src))
>  		return;
>  	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
> -			     &maddr, &respond, &dupl_addr);
> +			     msg_peer_net_hash(hdr), &maddr, &respond,
> +			     &dupl_addr);
>  	if (dupl_addr)
>  		disc_dupl_alert(b, src, &maddr);
>  	if (!respond)
> diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> index 0daa6f04ca81..2d7cb66a6912 100644
> --- a/net/tipc/msg.h
> +++ b/net/tipc/msg.h
> @@ -1026,6 +1026,20 @@ static inline bool msg_is_reset(struct tipc_msg *hdr)
>  	return (msg_user(hdr) == LINK_PROTOCOL) && (msg_type(hdr) == RESET_MSG);
>  }
> 
> +/* Word 13
> + */
> +static inline void msg_set_peer_net_hash(struct tipc_msg *m, u32 n)
> +{
> +	msg_set_word(m, 13, n);
> +}
> +
> +static inline u32 msg_peer_net_hash(struct tipc_msg *m)
> +{
> +	return msg_word(m, 13);
> +}
> +
> +/* Word 14
> + */
>  static inline u32 msg_sugg_node_addr(struct tipc_msg *m)
>  {
>  	return msg_word(m, 14);
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 836e629e8f4a..5feaf3b67380 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -146,7 +146,7 @@ static void named_distribute(struct net *net, struct sk_buff_head *list,
>  	struct publication *publ;
>  	struct sk_buff *skb = NULL;
>  	struct distr_item *item = NULL;
> -	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0) - INT_H_SIZE) /
> +	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0, false) - INT_H_SIZE) /
>  			ITEM_SIZE) * ITEM_SIZE;
>  	u32 msg_rem = msg_dsz;
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index f2e3cf70c922..4b60928049ea 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -126,6 +126,8 @@ struct tipc_node {
>  	struct timer_list timer;
>  	struct rcu_head rcu;
>  	unsigned long delete_at;
> +	struct net *peer_net;
> +	u32 peer_hash_mix;
>  };
> 
>  /* Node FSM states and events:
> @@ -184,7 +186,7 @@ static struct tipc_link *node_active_link(struct tipc_node *n, int sel)
>  	return n->links[bearer_id].link;
>  }
> 
> -int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
> +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected)
>  {
>  	struct tipc_node *n;
>  	int bearer_id;
> @@ -194,6 +196,14 @@ int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
>  	if (unlikely(!n))
>  		return mtu;
> 
> +	/* Allow MAX_MSG_SIZE when building connection oriented message
> +	 * if they are in the same core network
> +	 */
> +	if (n->peer_net && connected) {
> +		tipc_node_put(n);
> +		return mtu;
> +	}
> +
>  	bearer_id = n->active_links[sel & 1];
>  	if (likely(bearer_id != INVALID_BEARER_ID))
>  		mtu = n->links[bearer_id].mtu;
> @@ -360,8 +370,37 @@ static void tipc_node_write_unlock(struct tipc_node *n)
>  	}
>  }
> 
> +static void tipc_node_assign_peer_net(struct tipc_node *n, u32 hash_mixes)
> +{
> +	int net_id = tipc_netid(n->net);
> +	struct tipc_net *tn_peer;
> +	struct net *tmp;
> +	u32 hash_chk;
> +
> +	if (n->peer_net)
> +		return;
> +
> +	for_each_net_rcu(tmp) {
> +		tn_peer = tipc_net(tmp);
> +		if (!tn_peer)
> +			continue;
> +		/* Integrity checking whether node exists in namespace or not */
> +		if (tn_peer->net_id != net_id)
> +			continue;
> +		if (memcmp(n->peer_id, tn_peer->node_id, NODE_ID_LEN))
> +			continue;
> +		hash_chk = tipc_net_hash_mixes(tmp, tn_peer->random);
> +		if (hash_mixes ^ hash_chk)
> +			continue;
> +		n->peer_net = tmp;
> +		n->peer_hash_mix = hash_mixes;
> +		break;
> +	}
> +}
> +
>  static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
> -					  u8 *peer_id, u16 capabilities)
> +					  u8 *peer_id, u16 capabilities,
> +					  u32 signature, u32 hash_mixes)
>  {
>  	struct tipc_net *tn = net_generic(net, tipc_net_id);
>  	struct tipc_node *n, *temp_node;
> @@ -372,6 +411,8 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
>  	spin_lock_bh(&tn->node_list_lock);
>  	n = tipc_node_find(net, addr);
>  	if (n) {
> +		if (n->peer_hash_mix ^ hash_mixes)
> +			tipc_node_assign_peer_net(n, hash_mixes);
>  		if (n->capabilities == capabilities)
>  			goto exit;
>  		/* Same node may come back with new capabilities */
> @@ -389,6 +430,7 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
>  		list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
>  			tn->capabilities &= temp_node->capabilities;
>  		}
> +
>  		goto exit;
>  	}
>  	n = kzalloc(sizeof(*n), GFP_ATOMIC);
> @@ -399,6 +441,10 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
>  	n->addr = addr;
>  	memcpy(&n->peer_id, peer_id, 16);
>  	n->net = net;
> +	n->peer_net = NULL;
> +	n->peer_hash_mix = 0;
> +	/* Assign kernel local namespace if exists */
> +	tipc_node_assign_peer_net(n, hash_mixes);
>  	n->capabilities = capabilities;
>  	kref_init(&n->kref);
>  	rwlock_init(&n->lock);
> @@ -426,6 +472,10 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
>  				 tipc_bc_sndlink(net),
>  				 &n->bc_entry.link)) {
>  		pr_warn("Broadcast rcv link creation failed, no memory\n");
> +		if (n->peer_net) {
> +			n->peer_net = NULL;
> +			n->peer_hash_mix = 0;
> +		}
>  		kfree(n);
>  		n = NULL;
>  		goto exit;
> @@ -979,7 +1029,7 @@ u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr)
> 
>  void tipc_node_check_dest(struct net *net, u32 addr,
>  			  u8 *peer_id, struct tipc_bearer *b,
> -			  u16 capabilities, u32 signature,
> +			  u16 capabilities, u32 signature, u32 hash_mixes,
>  			  struct tipc_media_addr *maddr,
>  			  bool *respond, bool *dupl_addr)
>  {
> @@ -998,7 +1048,8 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>  	*dupl_addr = false;
>  	*respond = false;
> 
> -	n = tipc_node_create(net, addr, peer_id, capabilities);
> +	n = tipc_node_create(net, addr, peer_id, capabilities, signature,
> +			     hash_mixes);
>  	if (!n)
>  		return;
> 
> @@ -1343,6 +1394,10 @@ static void node_lost_contact(struct tipc_node *n,
>  	/* Notify publications from this node */
>  	n->action_flags |= TIPC_NOTIFY_NODE_DOWN;
> 
> +	if (n->peer_net) {
> +		n->peer_net = NULL;
> +		n->peer_hash_mix = 0;
> +	}
>  	/* Notify sockets connected to node */
>  	list_for_each_entry_safe(conn, safe, conns, list) {
>  		skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE, TIPC_CONN_MSG,
> @@ -1424,6 +1479,56 @@ static int __tipc_nl_add_node(struct tipc_nl_msg *msg, struct tipc_node
> *node)
>  	return -EMSGSIZE;
>  }
> 
> +static void tipc_lxc_xmit(struct net *peer_net, struct sk_buff_head *list)
> +{
> +	struct tipc_msg *hdr = buf_msg(skb_peek(list));
> +	struct sk_buff_head inputq;
> +
> +	switch (msg_user(hdr)) {
> +	case TIPC_LOW_IMPORTANCE:
> +	case TIPC_MEDIUM_IMPORTANCE:
> +	case TIPC_HIGH_IMPORTANCE:
> +	case TIPC_CRITICAL_IMPORTANCE:
> +		if (msg_connected(hdr) || msg_named(hdr)) {
> +			tipc_loopback_trace(peer_net, list);
> +			spin_lock_init(&list->lock);
> +			tipc_sk_rcv(peer_net, list);
> +			return;
> +		}
> +		if (msg_mcast(hdr)) {
> +			tipc_loopback_trace(peer_net, list);
> +			skb_queue_head_init(&inputq);
> +			tipc_sk_mcast_rcv(peer_net, list, &inputq);
> +			__skb_queue_purge(list);
> +			skb_queue_purge(&inputq);
> +			return;
> +		}
> +		return;
> +	case MSG_FRAGMENTER:
> +		if (tipc_msg_assemble(list)) {
> +			tipc_loopback_trace(peer_net, list);
> +			skb_queue_head_init(&inputq);
> +			tipc_sk_mcast_rcv(peer_net, list, &inputq);
> +			__skb_queue_purge(list);
> +			skb_queue_purge(&inputq);
> +		}
> +		return;
> +	case GROUP_PROTOCOL:
> +	case CONN_MANAGER:
> +		tipc_loopback_trace(peer_net, list);
> +		spin_lock_init(&list->lock);
> +		tipc_sk_rcv(peer_net, list);
> +		return;
> +	case LINK_PROTOCOL:
> +	case NAME_DISTRIBUTOR:
> +	case TUNNEL_PROTOCOL:
> +	case BCAST_PROTOCOL:
> +		return;
> +	default:
> +		return;
> +	};
> +}
> +
>  /**
>   * tipc_node_xmit() is the general link level function for message sending
>   * @net: the applicable net namespace
> @@ -1439,6 +1544,7 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
>  	struct tipc_link_entry *le = NULL;
>  	struct tipc_node *n;
>  	struct sk_buff_head xmitq;
> +	bool node_up = false;
>  	int bearer_id;
>  	int rc;
> 
> @@ -1456,6 +1562,17 @@ int tipc_node_xmit(struct net *net, struct sk_buff_head *list,
>  	}
> 
>  	tipc_node_read_lock(n);
> +	node_up = node_is_up(n);
> +	if (node_up && n->peer_net && check_net(n->peer_net)) {
> +		/* xmit inner linux container */
> +		tipc_lxc_xmit(n->peer_net, list);
> +		if (likely(skb_queue_empty(list))) {
> +			tipc_node_read_unlock(n);
> +			tipc_node_put(n);
> +			return 0;
> +		}
> +	}
> +
>  	bearer_id = n->active_links[selector & 1];
>  	if (unlikely(bearer_id == INVALID_BEARER_ID)) {
>  		tipc_node_read_unlock(n);
> @@ -2587,3 +2704,33 @@ int tipc_node_dump(struct tipc_node *n, bool more, char *buf)
> 
>  	return i;
>  }
> +
> +void tipc_node_pre_cleanup_net(struct net *exit_net)
> +{
> +	struct tipc_node *n;
> +	struct tipc_net *tn;
> +	struct net *tmp;
> +
> +	rcu_read_lock();
> +	for_each_net_rcu(tmp) {
> +		if (tmp == exit_net)
> +			continue;
> +		tn = tipc_net(tmp);
> +		if (!tn)
> +			continue;
> +		spin_lock_bh(&tn->node_list_lock);
> +		list_for_each_entry_rcu(n, &tn->node_list, list) {
> +			if (!n->peer_net)
> +				continue;
> +			if (n->peer_net != exit_net)
> +				continue;
> +			tipc_node_write_lock(n);
> +			n->peer_net = NULL;
> +			n->peer_hash_mix = 0;
> +			tipc_node_write_unlock_fast(n);
> +			break;
> +		}
> +		spin_unlock_bh(&tn->node_list_lock);
> +	}
> +	rcu_read_unlock();
> +}
> diff --git a/net/tipc/node.h b/net/tipc/node.h
> index 291d0ecd4101..30563c4f35d5 100644
> --- a/net/tipc/node.h
> +++ b/net/tipc/node.h
> @@ -75,7 +75,7 @@ u32 tipc_node_get_addr(struct tipc_node *node);
>  u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr);
>  void tipc_node_check_dest(struct net *net, u32 onode, u8 *peer_id128,
>  			  struct tipc_bearer *bearer,
> -			  u16 capabilities, u32 signature,
> +			  u16 capabilities, u32 signature, u32 hash_mixes,
>  			  struct tipc_media_addr *maddr,
>  			  bool *respond, bool *dupl_addr);
>  void tipc_node_delete_links(struct net *net, int bearer_id);
> @@ -92,7 +92,7 @@ void tipc_node_unsubscribe(struct net *net, struct list_head *subscr, u32 addr);
>  void tipc_node_broadcast(struct net *net, struct sk_buff *skb);
>  int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32 peer_port);
>  void tipc_node_remove_conn(struct net *net, u32 dnode, u32 port);
> -int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel);
> +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected);
>  bool tipc_node_is_up(struct net *net, u32 addr);
>  u16 tipc_node_get_capabilities(struct net *net, u32 addr);
>  int tipc_nl_node_dump(struct sk_buff *skb, struct netlink_callback *cb);
> @@ -107,4 +107,5 @@ int tipc_nl_node_get_monitor(struct sk_buff *skb, struct genl_info *info);
>  int tipc_nl_node_dump_monitor(struct sk_buff *skb, struct netlink_callback *cb);
>  int tipc_nl_node_dump_monitor_peer(struct sk_buff *skb,
>  				   struct netlink_callback *cb);
> +void tipc_node_pre_cleanup_net(struct net *exit_net);
>  #endif
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 35e32ffc2b90..2bcacd6022d5 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -854,7 +854,7 @@ static int tipc_send_group_msg(struct net *net, struct tipc_sock *tsk,
> 
>  	/* Build message as chain of buffers */
>  	__skb_queue_head_init(&pkts);
> -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
>  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
>  	if (unlikely(rc != dlen))
>  		return rc;
> @@ -1388,7 +1388,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>  		return rc;
> 
>  	__skb_queue_head_init(&pkts);
> -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
>  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
>  	if (unlikely(rc != dlen))
>  		return rc;
> @@ -1526,7 +1526,7 @@ static void tipc_sk_finish_conn(struct tipc_sock *tsk, u32 peer_port,
>  	sk_reset_timer(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
>  	tipc_set_sk_state(sk, TIPC_ESTABLISHED);
>  	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
> -	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
> +	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid, true);
>  	tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
>  	__skb_queue_purge(&sk->sk_write_queue);
>  	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
> --
> 2.20.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
