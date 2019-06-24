Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E75C4FF7A
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 04:41:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfEvB-0002UM-I6; Mon, 24 Jun 2019 02:41:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hfEv9-0002UC-V3
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 02:41:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gh1hk+miKKaojcfqDswMy/AUpAmXdX9LMKuM4Ds3VTc=; b=mCtS5G2d6x72a5AOcndHf+zd36
 ayXRHcb1fiXCVwy0HeiT4DwF3nLQAUp6q4kWfs7Q9V+O+bgQJy2nnVsyX1aBN4J3e4k9tj2OPn7Iq
 bDipu6CmYHQ+O+mRKtU02OYoVrF7c8DiPC0Ieid1u+xHTDfy5mMKRYhQ1pKy5a3a1t8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gh1hk+miKKaojcfqDswMy/AUpAmXdX9LMKuM4Ds3VTc=; b=OCq9xgiwnFyXQsnPqwMVUlUm/U
 eioDhFwXH2lWdsrxBeNW5E1nyJPOYGor70BGwV4//4Qc5SvzUh42RX+yWjKiwO/uWU9AEcZ75ySid
 UnFcLuGR4pKbicQ97kBC44kSoTxxCxru04pC56xz6EEYk38kZTEc28lC1HmzkKSD+7rg=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.90_1) id 1hfEvB-00B8tu-0A
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 02:41:30 +0000
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x5O2f5mx004210
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Sun, 23 Jun 2019 19:41:06 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sun, 23 Jun
 2019 19:41:05 -0700
To: Jon Maloy <jon.maloy@ericsson.com>, John Rutherford
 <john.rutherford@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20190619001118.16154-1-john.rutherford@dektech.com.au>
 <28b25428-9fe9-8cc6-52f8-21b6aa863c2f@windriver.com>
 <CH2PR15MB3575321476634B0F3A160CF79AE70@CH2PR15MB3575.namprd15.prod.outlook.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <e1116a8a-d897-ba91-9ae1-b086a3aabcd1@windriver.com>
Date: Mon, 24 Jun 2019 10:30:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CH2PR15MB3575321476634B0F3A160CF79AE70@CH2PR15MB3575.namprd15.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hfEvB-00B8tu-0A
Subject: Re: [tipc-discussion] [net-next v2] tipc: add loopback device
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

On 6/21/19 9:41 PM, Jon Maloy wrote:
> Hi Ying,
> We discussed this, and even had a first version where we did this, performing the whole attach/detach tasks in the command execution itself. This resulted in way to much new code to my taste. 
> My greatest concern now is that some users will enable this interface because they think it is necessary (we have already seen cases of that) and then start complaining about performance.
> So, as a compromise, I suggested we could add a "confirmation" printout in the tipc tool when the loopback interface is enabled, to make the user understand that this is for tracing only.
> Do you think this would be acceptable?

Make sense to me.

Thanks,
Ying

> 
> ///jon
> 
> 
>> -----Original Message-----
>> From: Ying Xue <ying.xue@windriver.com>
>> Sent: 21-Jun-19 08:16
>> To: John Rutherford <john.rutherford@dektech.com.au>; tipc-
>> discussion@lists.sourceforge.net
>> Subject: Re: [tipc-discussion] [net-next v2] tipc: add loopback device tracking
>>
>> Good work!
>>
>> Just one suggestion: it's better to add one separate kernel config to control
>> whether the new feature is enabled or not, and its default value should be set
>> to "Disabled" because the feature is related to debug.
>>
>> On 6/19/19 8:11 AM, John Rutherford wrote:
>>> Since node internal messages are passed directly to socket it is not
>>> possible to observe this message exchange via tcpdump or wireshark.
>>>
>>> We now remedy this by making it possible to clone such messages and
>>> send the clones to the loopback interface.  The clones are dropped at
>>> reception and have no functional role except making the traffic visible.
>>>
>>> The feature is turned on/off by enabling/disabling the loopback "bearer"
>>> "eth:lo".
>>>
>>> Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
>>> ---
>>>  net/tipc/bcast.c  |  4 +++-
>>>  net/tipc/bearer.c | 67
>>> +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>  net/tipc/bearer.h |  3 +++
>>>  net/tipc/core.c   |  5 ++++-
>>>  net/tipc/core.h   | 12 ++++++++++
>>>  net/tipc/node.c   |  1 +
>>>  net/tipc/topsrv.c |  2 ++
>>>  7 files changed, 92 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c index
>>> 6c997d4..235331d 100644
>>> --- a/net/tipc/bcast.c
>>> +++ b/net/tipc/bcast.c
>>> @@ -406,8 +406,10 @@ int tipc_mcast_xmit(struct net *net, struct
>> sk_buff_head *pkts,
>>>  			rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
>>>  	}
>>>
>>> -	if (dests->local)
>>> +	if (dests->local) {
>>> +		tipc_loopback_trace(net, &localq);
>>>  		tipc_sk_mcast_rcv(net, &localq, &inputq);
>>> +	}
>>>  exit:
>>>  	/* This queue should normally be empty by now */
>>>  	__skb_queue_purge(pkts);
>>> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c index
>>> 2bed658..27b4fd7 100644
>>> --- a/net/tipc/bearer.c
>>> +++ b/net/tipc/bearer.c
>>> @@ -836,6 +836,12 @@ int __tipc_nl_bearer_disable(struct sk_buff *skb,
>>> struct genl_info *info)
>>>
>>>  	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
>>>
>>> +	if (!strcmp(name, "eth:lo")) {
>>> +		tipc_net(net)->loopback_trace = false;
>>> +		pr_info("Disabled packet tracing on loopback interface\n");
>>> +		return 0;
>>> +	}
>>> +
>>>  	bearer = tipc_bearer_find(net, name);
>>>  	if (!bearer)
>>>  		return -EINVAL;
>>> @@ -881,6 +887,12 @@ int __tipc_nl_bearer_enable(struct sk_buff *skb,
>>> struct genl_info *info)
>>>
>>>  	bearer = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
>>>
>>> +	if (!strcmp(bearer, "eth:lo")) {
>>> +		tipc_net(net)->loopback_trace = true;
>>> +		pr_info("Enabled packet tracing on loopback interface\n");
>>> +		return 0;
>>> +	}
>>> +
>>>  	if (attrs[TIPC_NLA_BEARER_DOMAIN])
>>>  		domain = nla_get_u32(attrs[TIPC_NLA_BEARER_DOMAIN]);
>>>
>>> @@ -1021,6 +1033,61 @@ int tipc_nl_bearer_set(struct sk_buff *skb,
>> struct genl_info *info)
>>>  	return err;
>>>  }
>>>
>>> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
>>> +*xmitq) {
>>> +	struct net_device *dev = net->loopback_dev;
>>> +	struct sk_buff *skb, *_skb;
>>> +	int exp;
>>> +
>>> +	skb_queue_walk(xmitq, _skb) {
>>> +		skb = pskb_copy(_skb, GFP_ATOMIC);
>>> +		if (!skb)
>>> +			continue;
>>> +		exp = SKB_DATA_ALIGN(dev->hard_header_len -
>> skb_headroom(skb));
>>> +		if (exp > 0 && pskb_expand_head(skb, exp, 0, GFP_ATOMIC)) {
>>> +			kfree_skb(skb);
>>> +			continue;
>>> +		}
>>> +		skb_reset_network_header(skb);
>>> +		skb->dev = dev;
>>> +		skb->protocol = htons(ETH_P_TIPC);
>>> +		dev_hard_header(skb, dev, ETH_P_TIPC, dev->dev_addr,
>>> +				dev->dev_addr, skb->len);
>>> +		dev_queue_xmit(skb);
>>> +	}
>>> +}
>>> +
>>> +static int tipc_loopback_rcv_pkt(struct sk_buff *skb, struct net_device
>> *dev,
>>> +				 struct packet_type *pt, struct net_device *od) {
>>> +	consume_skb(skb);
>>> +	return NET_RX_SUCCESS;
>>> +}
>>> +
>>> +int tipc_attach_loopback(struct net *net) {
>>> +	struct net_device *dev = net->loopback_dev;
>>> +	struct tipc_net *tn = tipc_net(net);
>>> +
>>> +	if (!dev)
>>> +		return -ENODEV;
>>> +	dev_hold(dev);
>>> +	tn->loopback_pt.dev = dev;
>>> +	tn->loopback_pt.type = htons(ETH_P_TIPC);
>>> +	tn->loopback_pt.func = tipc_loopback_rcv_pkt;
>>> +	tn->loopback_trace = false;
>>> +	dev_add_pack(&tn->loopback_pt);
>>> +	return 0;
>>> +}
>>> +
>>> +void tipc_detach_loopback(struct net *net) {
>>> +	struct tipc_net *tn = tipc_net(net);
>>> +
>>> +	dev_remove_pack(&tn->loopback_pt);
>>> +	dev_put(net->loopback_dev);
>>> +}
>>> +
>>>  static int __tipc_nl_add_media(struct tipc_nl_msg *msg,
>>>  			       struct tipc_media *media, int nlflags)  { diff --git
>>> a/net/tipc/bearer.h b/net/tipc/bearer.h index 7f4c569..ef7fad9 100644
>>> --- a/net/tipc/bearer.h
>>> +++ b/net/tipc/bearer.h
>>> @@ -232,6 +232,9 @@ void tipc_bearer_xmit(struct net *net, u32
>> bearer_id,
>>>  		      struct tipc_media_addr *dst);  void
>>> tipc_bearer_bc_xmit(struct net *net, u32 bearer_id,
>>>  			 struct sk_buff_head *xmitq);
>>> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
>>> +*xmitq); int tipc_attach_loopback(struct net *net); void
>>> +tipc_detach_loopback(struct net *net);
>>>
>>>  /* check if device MTU is too low for tipc headers */  static inline
>>> bool tipc_mtu_bad(struct net_device *dev, unsigned int reserve) diff
>>> --git a/net/tipc/core.c b/net/tipc/core.c index ed536c0..1867687
>>> 100644
>>> --- a/net/tipc/core.c
>>> +++ b/net/tipc/core.c
>>> @@ -81,7 +81,9 @@ static int __net_init tipc_init_net(struct net *net)
>>>  	err = tipc_bcast_init(net);
>>>  	if (err)
>>>  		goto out_bclink;
>>> -
>>> +	err = tipc_attach_loopback(net);
>>> +	if (err)
>>> +		goto out_bclink;
>>>  	return 0;
>>>
>>>  out_bclink:
>>> @@ -94,6 +96,7 @@ static int __net_init tipc_init_net(struct net *net)
>>>
>>>  static void __net_exit tipc_exit_net(struct net *net)  {
>>> +	tipc_detach_loopback(net);
>>>  	tipc_net_stop(net);
>>>  	tipc_bcast_stop(net);
>>>  	tipc_nametbl_stop(net);
>>> diff --git a/net/tipc/core.h b/net/tipc/core.h index 7a68e1b..c1c2906
>>> 100644
>>> --- a/net/tipc/core.h
>>> +++ b/net/tipc/core.h
>>> @@ -67,6 +67,7 @@ struct tipc_link;
>>>  struct tipc_name_table;
>>>  struct tipc_topsrv;
>>>  struct tipc_monitor;
>>> +void tipc_clone_to_loopback(struct net *net, struct sk_buff_head
>>> +*pkts);
>>>
>>>  #define TIPC_MOD_VER "2.0.0"
>>>
>>> @@ -125,6 +126,10 @@ struct tipc_net {
>>>
>>>  	/* Cluster capabilities */
>>>  	u16 capabilities;
>>> +
>>> +	/* Tracing of node internal messages */
>>> +	struct packet_type loopback_pt;
>>> +	bool loopback_trace;
>>>  };
>>>
>>>  static inline struct tipc_net *tipc_net(struct net *net) @@ -152,6
>>> +157,13 @@ static inline struct tipc_topsrv *tipc_topsrv(struct net *net)
>>>  	return tipc_net(net)->topsrv;
>>>  }
>>>
>>> +static inline void tipc_loopback_trace(struct net *net,
>>> +				       struct sk_buff_head *pkts) {
>>> +	if (unlikely(tipc_net(net)->loopback_trace))
>>> +		tipc_clone_to_loopback(net, pkts);
>>> +}
>>> +
>>>  static inline unsigned int tipc_hashfn(u32 addr)  {
>>>  	return addr & (NODE_HTABLE_SIZE - 1); diff --git a/net/tipc/node.c
>>> b/net/tipc/node.c index 9e106d3..7e58831 100644
>>> --- a/net/tipc/node.c
>>> +++ b/net/tipc/node.c
>>> @@ -1439,6 +1439,7 @@ int tipc_node_xmit(struct net *net, struct
>> sk_buff_head *list,
>>>  	int rc;
>>>
>>>  	if (in_own_node(net, dnode)) {
>>> +		tipc_loopback_trace(net, list);
>>>  		tipc_sk_rcv(net, list);
>>>  		return 0;
>>>  	}
>>> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c index
>>> f345662..e3a6ba1 100644
>>> --- a/net/tipc/topsrv.c
>>> +++ b/net/tipc/topsrv.c
>>> @@ -40,6 +40,7 @@
>>>  #include "socket.h"
>>>  #include "addr.h"
>>>  #include "msg.h"
>>> +#include "bearer.h"
>>>  #include <net/sock.h>
>>>  #include <linux/module.h>
>>>
>>> @@ -608,6 +609,7 @@ static void tipc_topsrv_kern_evt(struct net *net,
>> struct tipc_event *evt)
>>>  	memcpy(msg_data(buf_msg(skb)), evt, sizeof(*evt));
>>>  	skb_queue_head_init(&evtq);
>>>  	__skb_queue_tail(&evtq, skb);
>>> +	tipc_loopback_trace(net, &evtq);
>>>  	tipc_sk_rcv(net, &evtq);
>>>  }
>>>
>>>
>>
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
