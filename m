Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9377A8F8
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Jul 2019 14:51:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hsRas-0002ov-I2; Tue, 30 Jul 2019 12:51:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hsRar-0002oX-6V
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 12:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rem1GBoti/z66pMhYUZLnVC/B1AmhDp8CZNTgNerODs=; b=ca6cFURgIXY4ls97R8tCTa+1Jw
 z7SkXhl93YBHsrMG1GmL/MPpV0MwST4FW8IN5LLydoqrmK3Vc8wl9hM+/aWtbVYqR7Asqf5PX3u27
 EEq5KqG2myMsBuJydYbNn8Cm1dMNZam9VNv84exba9DbO8YYx3mjApPF93zW4gjI9cUo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rem1GBoti/z66pMhYUZLnVC/B1AmhDp8CZNTgNerODs=; b=Os+JYX3VAWjeUO8sCno/VLQq6R
 dfkfDCsJtSxyor+yyJLsHytLRCqwHlxrqHESHcsVmKEu8NrLRxm80vR+VE50mOf6a3WCBCbn/tcZ+
 fMGYKlE9PzKGV2W3M01diJkA37ieZNmERn6PplZPN2rvkZPMSMTGNQ0CnnDz1aDHh5z0=;
Received: from mail-eopbgr750084.outbound.protection.outlook.com
 ([40.107.75.84] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hsRah-000Xyz-Nd
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Jul 2019 12:51:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fIZVUpeMqpUHOKgRVqi+7+F1vHMFhFBhQeLrHnUHfVcQMNarSQ2qmqAP6pFA0U6Cm913UXq+5dBp+PgCxNZiWRLk6hJw7420PPnAf5M6wp/h+TUyU8ax+bnmQ0sjAW7RSBvGHD/cL+Byg3ceNOVGVS07BBREd6bHv6t846+FoldfQp/s1KAvgGs11qGkbwtSOdDaWR2+IFWWYYCi+XH/4r36qyQlcOUS9Sl3uL+SjBruyCJ6JFeaBfPyyiD83ojo5uIzFgiWCwmproSfOk3D+T2FPUNF7Kcc6bii2yvgY5qr2xRYK/HhMeqH1rsi6HcEE5sH5zeGWPxO4sfy6YVi5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rem1GBoti/z66pMhYUZLnVC/B1AmhDp8CZNTgNerODs=;
 b=fgjjZum6bQQXfGfGOVPKANwKDk9WPlssRrGSu9rhjzlQlKDHNND8HTH09bO7fWfJJYrIV6a3MWwxT52EMQ6sAZCJvOEievkqXjA2nH4Grbq1LrUy8H20PFxsjGnQPt7V4CEvekvxN4VA0jGeW6xDcuzou/K5C+PdMxUEdkAGtHYG+Ywt8A/TDJSOQroTLuHKlZX1CoF3Tf4c6vOVfqLivChChAGAtYKnsBO4FNmnJ4zvBeFJpAjsVdS0stOnHuwa7q/yMzmWI5Dl0JaFC2F6MliSk9FoDu2/zn3PkKM877o5AJmTZXD9b2IrJiYVZUSPxL5k2X5LwWLUTTyyaqguAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=ericsson.com;dmarc=pass action=none
 header.from=ericsson.com;dkim=pass header.d=ericsson.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rem1GBoti/z66pMhYUZLnVC/B1AmhDp8CZNTgNerODs=;
 b=YWmAUmQFWke7tdEAyks4zGkgyWfxN7b7LgvoDT36hFkiw1sdmBpZkWlf6OsvQQnFOAYc6n7+u2lR8BNDyg669iJtFtdQHEIjw0PSSs3GYPJ2D8p+eYT7CVwAcpQEauY1FOHSVVU+1OSRVZqMFQXcEwtJrx3qNZD5gv62/1qYC/M=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3526.namprd15.prod.outlook.com (10.255.155.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Tue, 30 Jul 2019 12:50:46 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::ecc4:bffd:8512:a8b6%2]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 12:50:46 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: John Rutherford <john.rutherford@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [net-next v3] tipc: add loopback device
 tracking
Thread-Index: AQHVPd+gf9A/DnRG3UalrxsvzwuLmKbjKwMA
Date: Tue, 30 Jul 2019 12:50:46 +0000
Message-ID: <CH2PR15MB35756B5D1B478DC01B9996BF9ADC0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190719031014.4563-1-john.rutherford@dektech.com.au>
In-Reply-To: <20190719031014.4563-1-john.rutherford@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ceb65a8-015f-4241-1425-08d714ec8ac9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3526; 
x-ms-traffictypediagnostic: CH2PR15MB3526:
x-ms-exchange-purlcount: 1
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB35266737CAAA01B1F8B43BEA9ADC0@CH2PR15MB3526.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:747;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(39860400002)(396003)(376002)(13464003)(189003)(199004)(110136005)(3846002)(76176011)(486006)(33656002)(71190400001)(66476007)(446003)(26005)(76116006)(66556008)(64756008)(66446008)(316002)(66946007)(229853002)(7696005)(6116002)(71200400001)(2906002)(25786009)(53546011)(6506007)(44832011)(102836004)(11346002)(86362001)(476003)(99286004)(5660300002)(55016002)(6306002)(8676002)(7736002)(478600001)(14454004)(81156014)(66066001)(68736007)(14444005)(9686003)(52536014)(6246003)(186003)(81166006)(8936002)(256004)(6436002)(2501003)(74316002)(53936002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3526;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: grWakeweS8j3uw3u4cV2gImJq3I9ZHOqLcTTmigjWIyTzgzTXlDCnSJeKPADVfGyRFLLrvudMZNYVEtVzKNteA1ew+0kmxz1JvdqMaKp5Df1ePsAp/QvUC6ulJWy1vBZOVCaF2OJFx7XBbzdIYw2J9/9XxSLWgiPj0f3EOqOJ8fLrpgQ2tTVeeJqzFQKk/CxOrR+CbLtEJ9gq10K2VFjYU4S7n2MvkSBPLgXHv6ErxrZZgV3H1dmvYEWoNpihzbPpw75+R38cA1DrlBI5tTa8MaibfMHHHBMeel5QR664Gco1dHx2pJTZT3CvyXcjgJMvbGU7+kU7OeOceUVqKTwsE+ndhKXicgZ1T4LFKeNrTrLWJcCr5/cj3g465N7wiE8YX2X3cs6Al8/g6SVvmCCygdrkCYJQahh8c6PO+Wv90A=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ceb65a8-015f-4241-1425-08d714ec8ac9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 12:50:46.7996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3526
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hsRah-000Xyz-Nd
Subject: Re: [tipc-discussion] [net-next v3] tipc: add loopback device
 tracking
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

I just have one minor comment. See below.
And forget about what I said about "on the fly" device detection. Since we have to register a handler anyway that wouldn't improve anything.

///jon


> -----Original Message-----
> From: john.rutherford@dektech.com.au <john.rutherford@dektech.com.au>
> Sent: 18-Jul-19 23:10
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [net-next v3] tipc: add loopback device tracking
> 
> From: John Rutherford <john.rutherford@dektech.com.au>
> 
> Since node internal messages are passed directly to the socket, it is not
> possible to observe those messages via tcpdump or wireshark.
> 
> We now remedy this by making it possible to clone such messages and send
> the clones to the loopback interface.  The clones are dropped at reception and
> have no functional role except making the traffic visible.
> 
> The feature is enabled if network taps are active for the loopback device.
> pcap filtering restrictions require the messages to be presented to the
> receiving side of the loopback device.
> 
> v3 - Function dev_nit_active used to check for network taps.
>    - Procedure netif_rx_ni used to send cloned messages to loopback device.
> 
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> ---
>  net/tipc/bcast.c  |  4 +++-
>  net/tipc/bearer.c | 65
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  net/tipc/bearer.h | 10 +++++++++
>  net/tipc/core.c   |  5 +++++
>  net/tipc/core.h   |  3 +++
>  net/tipc/node.c   |  1 +
>  net/tipc/topsrv.c |  2 ++
>  7 files changed, 89 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c index 6c997d4..235331d
> 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -406,8 +406,10 @@ int tipc_mcast_xmit(struct net *net, struct
> sk_buff_head *pkts,
>  			rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
>  	}
> 
> -	if (dests->local)
> +	if (dests->local) {
> +		tipc_loopback_trace(net, &localq);
>  		tipc_sk_mcast_rcv(net, &localq, &inputq);
> +	}
>  exit:
>  	/* This queue should normally be empty by now */
>  	__skb_queue_purge(pkts);
> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c index 2bed658..5273ec5
> 100644
> --- a/net/tipc/bearer.c
> +++ b/net/tipc/bearer.c
> @@ -389,6 +389,12 @@ int tipc_enable_l2_media(struct net *net, struct
> tipc_bearer *b,
>  		dev_put(dev);
>  		return -EINVAL;
>  	}
> +	if (dev == net->loopback_dev) {
> +		dev_put(dev);
> +		pr_info("Bearer <%s>: loopback device not permitted\n",

Or maybe: "Enabling <%s> not permitted\n", b->name);

> +		return -EINVAL;
> +	}
> 
>  	/* Autoconfigure own node identity if needed */
>  	if (!tipc_own_id(net) && hwaddr_len <= NODE_ID_LEN) { @@ -674,6
> +680,65 @@ void tipc_bearer_stop(struct net *net)
>  	}
>  }
> 
> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head *pkts)
> +{
> +	struct net_device *dev = net->loopback_dev;
> +	struct sk_buff *skb, *_skb;
> +	int exp;
> +
> +	skb_queue_walk(pkts, _skb) {
> +		skb = pskb_copy(_skb, GFP_ATOMIC);
> +		if (!skb)
> +			continue;
> +
> +		exp = SKB_DATA_ALIGN(dev->hard_header_len -
> skb_headroom(skb));
> +		if (exp > 0 && pskb_expand_head(skb, exp, 0, GFP_ATOMIC)) {
> +			kfree_skb(skb);
> +			continue;
> +		}
> +
> +		skb_reset_network_header(skb);
> +		dev_hard_header(skb, dev, ETH_P_TIPC, dev->dev_addr,
> +				dev->dev_addr, skb->len);
> +		skb->dev = dev;
> +		skb->pkt_type = PACKET_HOST;
> +		skb->ip_summed = CHECKSUM_UNNECESSARY;
> +		skb->protocol = eth_type_trans(skb, dev);
> +		netif_rx_ni(skb);
> +	}
> +}
> +
> +static int tipc_loopback_rcv_pkt(struct sk_buff *skb, struct net_device *dev,
> +				 struct packet_type *pt, struct net_device *od) {
> +	consume_skb(skb);
> +	return NET_RX_SUCCESS;
> +}
> +
> +int tipc_attach_loopback(struct net *net) {
> +	struct net_device *dev = net->loopback_dev;
> +	struct tipc_net *tn = tipc_net(net);
> +
> +	if (!dev)
> +		return -ENODEV;
> +
> +	dev_hold(dev);
> +	tn->loopback_pt.dev = dev;
> +	tn->loopback_pt.type = htons(ETH_P_TIPC);
> +	tn->loopback_pt.func = tipc_loopback_rcv_pkt;
> +	dev_add_pack(&tn->loopback_pt);
> +	return 0;
> +}
> +
> +void tipc_detach_loopback(struct net *net) {
> +	struct tipc_net *tn = tipc_net(net);
> +
> +	dev_remove_pack(&tn->loopback_pt);
> +	dev_put(net->loopback_dev);
> +}
> +
>  /* Caller should hold rtnl_lock to protect the bearer */  static int
> __tipc_nl_add_bearer(struct tipc_nl_msg *msg,
>  				struct tipc_bearer *bearer, int nlflags) diff --git
> a/net/tipc/bearer.h b/net/tipc/bearer.h index 7f4c569..ea0f3c4 100644
> --- a/net/tipc/bearer.h
> +++ b/net/tipc/bearer.h
> @@ -232,6 +232,16 @@ void tipc_bearer_xmit(struct net *net, u32
> bearer_id,
>  		      struct tipc_media_addr *dst);
>  void tipc_bearer_bc_xmit(struct net *net, u32 bearer_id,
>  			 struct sk_buff_head *xmitq);
> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> +*pkts); int tipc_attach_loopback(struct net *net); void
> +tipc_detach_loopback(struct net *net);
> +
> +static inline void tipc_loopback_trace(struct net *net,
> +				       struct sk_buff_head *pkts)
> +{
> +	if (unlikely(dev_nit_active(net->loopback_dev)))
> +		tipc_clone_to_loopback(net, pkts);
> +}
> 
>  /* check if device MTU is too low for tipc headers */  static inline bool
> tipc_mtu_bad(struct net_device *dev, unsigned int reserve) diff --git
> a/net/tipc/core.c b/net/tipc/core.c index c837072..23cb379 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -82,6 +82,10 @@ static int __net_init tipc_init_net(struct net *net)
>  	if (err)
>  		goto out_bclink;
> 
> +	err = tipc_attach_loopback(net);
> +	if (err)
> +		goto out_bclink;
> +
>  	return 0;
> 
>  out_bclink:
> @@ -94,6 +98,7 @@ static int __net_init tipc_init_net(struct net *net)
> 
>  static void __net_exit tipc_exit_net(struct net *net)  {
> +	tipc_detach_loopback(net);
>  	tipc_net_stop(net);
>  	tipc_bcast_stop(net);
>  	tipc_nametbl_stop(net);
> diff --git a/net/tipc/core.h b/net/tipc/core.h index 7a68e1b..60d8295 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -125,6 +125,9 @@ struct tipc_net {
> 
>  	/* Cluster capabilities */
>  	u16 capabilities;
> +
> +	/* Tracing of node internal messages */
> +	struct packet_type loopback_pt;
>  };
> 
>  static inline struct tipc_net *tipc_net(struct net *net) diff --git
> a/net/tipc/node.c b/net/tipc/node.c index 550581d..16d251b 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1443,6 +1443,7 @@ int tipc_node_xmit(struct net *net, struct
> sk_buff_head *list,
>  	int rc;
> 
>  	if (in_own_node(net, dnode)) {
> +		tipc_loopback_trace(net, list);
>  		tipc_sk_rcv(net, list);
>  		return 0;
>  	}
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c index f345662..e3a6ba1
> 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -40,6 +40,7 @@
>  #include "socket.h"
>  #include "addr.h"
>  #include "msg.h"
> +#include "bearer.h"
>  #include <net/sock.h>
>  #include <linux/module.h>
> 
> @@ -608,6 +609,7 @@ static void tipc_topsrv_kern_evt(struct net *net,
> struct tipc_event *evt)
>  	memcpy(msg_data(buf_msg(skb)), evt, sizeof(*evt));
>  	skb_queue_head_init(&evtq);
>  	__skb_queue_tail(&evtq, skb);
> +	tipc_loopback_trace(net, &evtq);
>  	tipc_sk_rcv(net, &evtq);
>  }
> 
> --
> 2.11.0
> 
> 
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
