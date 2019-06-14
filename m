Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8099645D7D
	for <lists+tipc-discussion@lfdr.de>; Fri, 14 Jun 2019 15:07:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hblvW-0008GZ-0h; Fri, 14 Jun 2019 13:07:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hblvU-0008GS-Me
 for tipc-discussion@lists.sourceforge.net; Fri, 14 Jun 2019 13:07:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PXaFZokjxoMtJpdQ24ugbK0siX+lAwNKOIAErecJDpA=; b=DYmI6Vzbnce47RiAu+G2CTQlb7
 fcyqwn9/joHcn80hUtY+j2Yi5DHRHPA7wxo9hOnMTM1ZjIQOxKLEoNBnCxYT0iiQ5dtbyGXQ2K/ui
 uxgu5Lj4XD4/zDelEfUMHbrT2dM44A5QAan24ltn+HS0JcvHLeoK2WURrIhQyTzYA3BY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PXaFZokjxoMtJpdQ24ugbK0siX+lAwNKOIAErecJDpA=; b=D4YX4KLADizpn2rA4lrkVVp6Dg
 pllqOqvzrJ7tsQ45CZM3nf699g/hm1apZaXZUtR8s7WUzJpEiycj21oQeTB/BpfWDvrphI5Ye2ENH
 gpxGhsZ8Nr+HpLPCSYJuXAfkji5YW1XzG3T9AXxuSuKr9XyRyN0CwitHuMTPhDPHzkgw=;
Received: from mail-eopbgr710075.outbound.protection.outlook.com
 ([40.107.71.75] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hblvH-00DHDh-8d
 for tipc-discussion@lists.sourceforge.net; Fri, 14 Jun 2019 13:07:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PXaFZokjxoMtJpdQ24ugbK0siX+lAwNKOIAErecJDpA=;
 b=YXqm4XUXmB3/c4L2c3i/Enf1LxWIZlg69Iwz7EFmMD8C9VyTjhUek1QrYDCcunwqZdlS4VEFYel740nEuqzM+f5SmrwkVRoZt0TMqJia+HboL5aNdjzzCF5Vam7TEU7hotcAHwQpuVHIDx1po9YGOqM8Onwa6aTOOVccyPBL7rU=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2SPR01MB0004.namprd15.prod.outlook.com (10.255.155.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.10; Fri, 14 Jun 2019 12:52:06 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.013; Fri, 14 Jun 2019
 12:52:06 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: John Rutherford <john.rutherford@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [PATCH] tipc: add loopback device tracking
Thread-Index: AdUiVIHqD+nIHDQkTcqK3s247O+o2wAWfHLw
Date: Fri, 14 Jun 2019 12:52:06 +0000
Message-ID: <CH2PR15MB35751F3E4FFC7AE9274024499AEE0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <002001d52254$a785f8f0$f691ead0$@dektech.com.au>
In-Reply-To: <002001d52254$a785f8f0$f691ead0$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7486ea6-83b5-4c0b-db8e-08d6f0c71b61
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2SPR01MB0004; 
x-ms-traffictypediagnostic: CH2SPR01MB0004:
x-ms-exchange-purlcount: 2
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2SPR01MB0004BB270085F26FEBCB862C9AEE0@CH2SPR01MB0004.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(346002)(396003)(136003)(376002)(13464003)(189003)(199004)(14444005)(11346002)(66066001)(7736002)(305945005)(55016002)(66946007)(486006)(76116006)(9686003)(256004)(6306002)(73956011)(8676002)(44832011)(81156014)(8936002)(66556008)(5660300002)(68736007)(64756008)(66446008)(86362001)(5024004)(52536014)(81166006)(33656002)(25786009)(66476007)(2906002)(110136005)(71200400001)(74316002)(76176011)(186003)(6116002)(7696005)(53936002)(3846002)(99286004)(2501003)(71190400001)(6246003)(966005)(229853002)(446003)(476003)(53546011)(102836004)(6436002)(26005)(478600001)(6506007)(14454004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2SPR01MB0004;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kXHdbAyBLgfiVX/0btpo7LMwprfCV9nhhsXwiXbfaNbQNFokISgc/nE3p28kYQQ2sP3lvUz+fDbxXScseinkqtGx4mp55F9h8pfVer2KMmWK8GjTDGnDUA57wFYywQAgc5xwmkvsLJIY4nXMMIAtur6cM51zsqG2KdeKOzlBST68SffJiZGbSeQE0TUXez/rpx52BMXYD14KIhUsOp4DMJjzCUxG+/szp062FgtcGu9UOv2bNd/wv0gbb5fUtkWHgP+bjzIwJPSCGl59miJcfST2kUMAyfiQL8xlwu62J0ThySSW7tYRI0oWNECpGVsarFq9kGChR5ex0mzWcw6w6TtVTRwm+7JRQpZwYFANh2jfAHACmmnEt7krN1ApFR3qOncVbuTNWtlvbZmPImeRAKgCmxD02AyGpqp8nLom+Hg=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7486ea6-83b5-4c0b-db8e-08d6f0c71b61
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 12:52:06.6381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2SPR01MB0004
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.71.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hblvH-00DHDh-8d
Subject: Re: [tipc-discussion] [PATCH] tipc: add loopback device tracking
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

Hi John,
When looking at this again, I think we can make another small improvement, which will make the code look a little bit nicer:

+ static inline void tipc_loopback_trace(struct net *net, struct sk_buff_head* pkts)
+{
+             if (unlikely(tipc_net(net)->loopback_trace)
+                        tipc_clone_to_loopback(net, pkts);
+}

This will result in the same binary code from the compiler, but we don't need to make the call conditional directly in the data path.

Otherwise this is still ok with me. Just remember to put [net-next] instead of [PATCH] in the patch header, and run scripts/checkpatch on it.

///jon

> -----Original Message-----
> From: John Rutherford <john.rutherford@dektech.com.au>
> Sent: 13-Jun-19 21:58
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [PATCH] tipc: add loopback device tracking
> 
> Since node internal messages are passed directly to socket it is not possible to
> observe
> 
> this message exchange via tcpdump or wireshark.
> 
> 
> 
> We now remedy this by making it possible to clone such messages and send
> the clones to the
> 
> loopback interface.  The clones are dropped at reception and have no
> functional role except
> 
> making the traffic visible.
> 
> 
> 
> The feature is turned on/off by enabling/disabling the loopback "bearer"
> "eth:lo".
> 
> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
> 
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> 
> ---
> 
> net/tipc/bcast.c   |  5 +++-
> 
> net/tipc/bearer.c  | 67
> ++++++++++++++++++++++++++++++++++++++++++++++++++++++
> 
> net/tipc/bearer.h  |  3 +++
> 
> net/tipc/core.c    |  5 +++-
> 
> net/tipc/core.h    |  9 ++++++++
> 
> net/tipc/netlink.c |  2 +-
> 
> net/tipc/node.c    |  2 ++
> 
> net/tipc/topsrv.c  |  3 +++
> 
> 8 files changed, 93 insertions(+), 3 deletions(-)
> 
> 
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> 
> index 6c997d4..db40129 100644
> 
> --- a/net/tipc/bcast.c
> 
> +++ b/net/tipc/bcast.c
> 
> @@ -406,8 +406,11 @@ int tipc_mcast_xmit(struct net *net, struct
> sk_buff_head *pkts,
> 
>                                                rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
> 
>                }
> 
> -              if (dests->local)
> 
> +             if (dests->local) {
> 
> +                             if (unlikely(tipc_loopback_trace(net)))
> 
> +
> + tipc_clone_to_loopback(net,
> &localq);
> 
>                                tipc_sk_mcast_rcv(net, &localq, &inputq);
> 
> +             }
> 
> exit:
> 
>                /* This queue should normally be empty by now */
> 
>                __skb_queue_purge(pkts);
> 
> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
> 
> index 2bed658..27b4fd7 100644
> 
> --- a/net/tipc/bearer.c
> 
> +++ b/net/tipc/bearer.c
> 
> @@ -836,6 +836,12 @@ int __tipc_nl_bearer_disable(struct sk_buff *skb,
> struct genl_info *info)
> 
>                 name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
> 
> +             if (!strcmp(name, "eth:lo")) {
> 
> +                             tipc_net(net)->loopback_trace = false;
> 
> +                             pr_info("Disabled packet tracing on
> + loopback
> interface\n");
> 
> +                             return 0;
> 
> +             }
> 
> +
> 
>                bearer = tipc_bearer_find(net, name);
> 
>                if (!bearer)
> 
>                                return -EINVAL;
> 
> @@ -881,6 +887,12 @@ int __tipc_nl_bearer_enable(struct sk_buff *skb,
> struct genl_info *info)
> 
>                 bearer = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
> 
> +             if (!strcmp(bearer, "eth:lo")) {
> 
> +                             tipc_net(net)->loopback_trace = true;
> 
> +                             pr_info("Enabled packet tracing on
> + loopback
> interface\n");
> 
> +                             return 0;
> 
> +             }
> 
> +
> 
>                if (attrs[TIPC_NLA_BEARER_DOMAIN])
> 
>                                domain =
> nla_get_u32(attrs[TIPC_NLA_BEARER_DOMAIN]);
> 
> @@ -1021,6 +1033,61 @@ int tipc_nl_bearer_set(struct sk_buff *skb, struct
> genl_info *info)
> 
>                return err;
> 
> }
> 
> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> +*xmitq)
> 
> +{
> 
> +             struct net_device *dev = net->loopback_dev;
> 
> +             struct sk_buff *skb, *_skb;
> 
> +             int exp;
> 
> +
> 
> +             skb_queue_walk(xmitq, _skb) {
> 
> +                             skb = pskb_copy(_skb, GFP_ATOMIC);
> 
> +                             if (!skb)
> 
> +                                             continue;
> 
> +                             exp = SKB_DATA_ALIGN(dev->hard_header_len
> + -
> skb_headroom(skb));
> 
> +                             if (exp > 0 && pskb_expand_head(skb, exp,
> + 0,
> GFP_ATOMIC)) {
> 
> +                                             kfree_skb(skb);
> 
> +                                             continue;
> 
> +                             }
> 
> +                             skb_reset_network_header(skb);
> 
> +                             skb->dev = dev;
> 
> +                             skb->protocol = htons(ETH_P_TIPC);
> 
> +                             dev_hard_header(skb, dev, ETH_P_TIPC,
> dev->dev_addr,
> 
> +
> + dev->dev_addr,
> skb->len);
> 
> +                             dev_queue_xmit(skb);
> 
> +             }
> 
> +}
> 
> +
> 
> +static int tipc_loopback_rcv_pkt(struct sk_buff *skb, struct net_device
> *dev,
> 
> +                                                             struct
> packet_type *pt, struct net_device *od)
> 
> +{
> 
> +             consume_skb(skb);
> 
> +             return NET_RX_SUCCESS;
> 
> +}
> 
> +
> 
> +int tipc_attach_loopback(struct net *net)
> 
> +{
> 
> +             struct net_device *dev = net->loopback_dev;
> 
> +             struct tipc_net *tn = tipc_net(net);
> 
> +
> 
> +             if (!dev)
> 
> +                             return -ENODEV;
> 
> +             dev_hold(dev);
> 
> +             tn->loopback_pt.dev = dev;
> 
> +             tn->loopback_pt.type = htons(ETH_P_TIPC);
> 
> +             tn->loopback_pt.func = tipc_loopback_rcv_pkt;
> 
> +             tn->loopback_trace = false;
> 
> +             dev_add_pack(&tn->loopback_pt);
> 
> +             return 0;
> 
> +}
> 
> +
> 
> +void tipc_detach_loopback(struct net *net)
> 
> +{
> 
> +             struct tipc_net *tn = tipc_net(net);
> 
> +
> 
> +             dev_remove_pack(&tn->loopback_pt);
> 
> +             dev_put(net->loopback_dev);
> 
> +}
> 
> +
> 
> static int __tipc_nl_add_media(struct tipc_nl_msg *msg,
> 
>                                                       struct tipc_media *media, int nlflags)
> 
> {
> 
> diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
> 
> index 7f4c569..ef7fad9 100644
> 
> --- a/net/tipc/bearer.h
> 
> +++ b/net/tipc/bearer.h
> 
> @@ -232,6 +232,9 @@ void tipc_bearer_xmit(struct net *net, u32
> bearer_id,
> 
>                                      struct tipc_media_addr *dst);
> 
> void tipc_bearer_bc_xmit(struct net *net, u32 bearer_id,
> 
>                                                 struct sk_buff_head *xmitq);
> 
> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
> +*xmitq);
> 
> +int tipc_attach_loopback(struct net *net);
> 
> +void tipc_detach_loopback(struct net *net);
> 
>  /* check if device MTU is too low for tipc headers */
> 
> static inline bool tipc_mtu_bad(struct net_device *dev, unsigned int
> reserve)
> 
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> 
> index ed536c0..1867687 100644
> 
> --- a/net/tipc/core.c
> 
> +++ b/net/tipc/core.c
> 
> @@ -81,7 +81,9 @@ static int __net_init tipc_init_net(struct net *net)
> 
>                err = tipc_bcast_init(net);
> 
>                if (err)
> 
>                                goto out_bclink;
> 
> -
> 
> +             err = tipc_attach_loopback(net);
> 
> +             if (err)
> 
> +                             goto out_bclink;
> 
>                return 0;
> 
>  out_bclink:
> 
> @@ -94,6 +96,7 @@ static int __net_init tipc_init_net(struct net *net)
> 
>  static void __net_exit tipc_exit_net(struct net *net)
> 
> {
> 
> +             tipc_detach_loopback(net);
> 
>                tipc_net_stop(net);
> 
>                tipc_bcast_stop(net);
> 
>                tipc_nametbl_stop(net);
> 
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> 
> index 7a68e1b..de164ac 100644
> 
> --- a/net/tipc/core.h
> 
> +++ b/net/tipc/core.h
> 
> @@ -125,6 +125,10 @@ struct tipc_net {
> 
>                 /* Cluster capabilities */
> 
>                u16 capabilities;
> 
> +
> 
> +             /* Tracing of node internal messages */
> 
> +             struct packet_type loopback_pt;
> 
> +             bool loopback_trace;
> 
> };
> 
>  static inline struct tipc_net *tipc_net(struct net *net)
> 
> @@ -152,6 +156,11 @@ static inline struct tipc_topsrv *tipc_topsrv(struct
> net *net)
> 
>                return tipc_net(net)->topsrv;
> 
> }
> 
> +static inline bool tipc_loopback_trace(struct net *net)
> 
> +{
> 
> +             return tipc_net(net)->loopback_trace;
> 
> +}
> 
> +
> 
> static inline unsigned int tipc_hashfn(u32 addr)
> 
> {
> 
>                return addr & (NODE_HTABLE_SIZE - 1);
> 
> diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
> 
> index 99bd166..d6165ad 100644
> 
> --- a/net/tipc/netlink.c
> 
> +++ b/net/tipc/netlink.c
> 
> @@ -261,7 +261,7 @@ struct genl_family tipc_genl_family __ro_after_init =
> {
> 
>                .version                = TIPC_GENL_V2_VERSION,
> 
>                .hdrsize                = 0,
> 
>                .maxattr               = TIPC_NLA_MAX,
> 
> -              .policy = tipc_nl_policy,
> 
> +             .policy                   = tipc_nl_policy,
> 
>                .netnsok              = true,
> 
>                .module                               = THIS_MODULE,
> 
>                .ops                       = tipc_genl_v2_ops,
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> 
> index 9e106d3..415d02d 100644
> 
> --- a/net/tipc/node.c
> 
> +++ b/net/tipc/node.c
> 
> @@ -1439,6 +1439,8 @@ int tipc_node_xmit(struct net *net, struct
> sk_buff_head *list,
> 
>                int rc;
> 
>                 if (in_own_node(net, dnode)) {
> 
> +                             if (unlikely(tipc_loopback_trace(net)))
> 
> +
> + tipc_clone_to_loopback(net,
> list);
> 
>                                tipc_sk_rcv(net, list);
> 
>                                return 0;
> 
>                }
> 
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> 
> index f345662..37f07e7 100644
> 
> --- a/net/tipc/topsrv.c
> 
> +++ b/net/tipc/topsrv.c
> 
> @@ -40,6 +40,7 @@
> 
> #include "socket.h"
> 
> #include "addr.h"
> 
> #include "msg.h"
> 
> +#include "bearer.h"
> 
> #include <net/sock.h>
> 
> #include <linux/module.h>
> 
> @@ -608,6 +609,8 @@ static void tipc_topsrv_kern_evt(struct net *net,
> struct tipc_event *evt)
> 
>                memcpy(msg_data(buf_msg(skb)), evt, sizeof(*evt));
> 
>                skb_queue_head_init(&evtq);
> 
>                __skb_queue_tail(&evtq, skb);
> 
> +             if (unlikely(tipc_loopback_trace(net)))
> 
> +                             tipc_clone_to_loopback(net, &evtq);
> 
>                tipc_sk_rcv(net, &evtq);
> 
> }
> 
> --
> 
> 2.11.0
> 
> 
> 
> 
> 
> ---
> This email has been checked for viruses by AVG.
> https://www.avg.com
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
