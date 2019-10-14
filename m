Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CABD6D6A01
	for <lists+tipc-discussion@lfdr.de>; Mon, 14 Oct 2019 21:19:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iK5sP-0005ab-5A; Mon, 14 Oct 2019 19:19:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iK5sO-0005aT-Jm
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 19:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RF6Y4JL6CoYgWCXfwcQtx5L6ThKjAG2A2toGuDalTR4=; b=IoX7uunU6TGDAvEHNQPCgxkDWH
 +9L6rOqPnJnTIVynj8f4RQx63/J5Np/cSFnWnXfz0prXhjah64eCWZNQzh1zJ4sR2h5sxOCD4j1iV
 V0EOV9QnaWz1l1TXsII32vDplKV3qb48ksnWYeP69zOT/MrC3hXSco7M5ai5NTDLdbAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RF6Y4JL6CoYgWCXfwcQtx5L6ThKjAG2A2toGuDalTR4=; b=LiVtg3GYEnmsdz/M48RoDv7KNL
 OtdYqIBYN+80GdXftAw9UFP+x9nVPX5X2yuRaMQxB1luMpoKq6xKw1X0U1tebBr/8TBxDORhnJ8MB
 tuHI9Vs4t64/yihFDWk231ENm/T1S3ok8qpcURZRCMCho4xpo2NCJZBGsBiCRNTlie9s=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iK5sL-000q3w-4P
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 19:19:28 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x9EFsjio000548
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Mon, 14 Oct 2019 08:54:46 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.166]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Mon,
 14 Oct 2019 08:54:45 -0700
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Jon Maloy <jon.maloy@ericsson.com>, Xin Long <lxin@redhat.com>
Thread-Topic: [net-next] tipc: improve throughput between nodes in netns
Thread-Index: AQHVeQvCrGCKkuKA5k22MoH+b60zoadO9E4A65ZbgLSUbuX1EIABKv2ggAAkxXCABMWVQA==
Date: Mon, 14 Oct 2019 15:54:43 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CA36761@ALA-MBD.corp.ad.wrs.com>
References: <20191002102530.6987-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB3575521491DAC944A0F9F2629A9B0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <1276077941.5776644.1570706044772.JavaMail.zimbra@redhat.com>
 <CH2PR15MB3575E8584C61FC485FD995469A940@CH2PR15MB3575.namprd15.prod.outlook.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA3252F@ALA-MBD.corp.ad.wrs.com>
 <CH2PR15MB3575F826668EEBF44BC929679A970@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB3575F826668EEBF44BC929679A970@CH2PR15MB3575.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.17.191]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: netdevconf.info]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iK5sL-000q3w-4P
Subject: Re: [tipc-discussion] [net-next] tipc: improve throughput between
 nodes in netns
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

Please see my comment inline.

At netdev 0x13 in Prague last July there was presented a related proposal https://netdevconf.info/0x13/session.html?talk-AF_GRAFT.
I was there, and I cannot say there was any overwhelming approval of this proposal, but neither was it rejected out of hand.

[Ying]  The idea of AF_GRAFT socket is exactly the same as this patch. If it can be recognized, it's definitely worth trying to submit this patch to upstream. But after my checking, the wired thing is that AF_GRAFT is not supported by latest kernel and I don't find its author ever attempted to submit its patch to upstream.

First, I see TIPC as an IPC, not a network protocol, and anybody using TIPC inside a cluster has per definition been authenticated to start a node and connect to the cluster. Here, there is no change from current policies.
Once a node has been accepted in a cluster, possibly via encrypted discovery messages which have been passing all policies checks, and we are 100% certain it is legitimate and located in the same kernel (as we are trying to ensure in this patch), I cannot see any reason why we should not be allowed to short-cut the stack the way we do. Security checks have already been done.
Are we circumventing any other policies by doing this that must not be done? 

[Ying] If we treat TIPC as IPC channel, bypassing its lower level interface is acceptable. Beside AF_GRAFT socket, in fact AF_UNIX socket provides an interconnection mechanism between different processes on socket level, and there are several options available for us to configure policies against socket, such as, SO_ATTACH_FILTER, SO_ATTACH_BPF, SO_ATTACH_REUSEPORT_EBPF etc. If we bypass TIPC bearer, the most inconvenient thing is that it's hard for us to monitor traffics between netns with tcpdump.  Of course, as Xin mentioned previously, we could not use traditional tools to control/shape TIPC traffic across netns. 

Unless you strongly object I would suggest we send this to netdev as an RFC  and observe the reactions. If David or Eric or any of the other heavyweight say flatly no there is nothing we can do. But It might be worth a try.

[Ying] No, I don't strongly object this proposal. We can try to submit it to net-next mail list. 

Thanks,
Ying

> -----Original Message-----
> From: Xue, Ying <Ying.Xue@windriver.com>
> Sent: 11-Oct-19 07:58
> To: Jon Maloy <jon.maloy@ericsson.com>; Xin Long <lxin@redhat.com>
> Subject: RE: [net-next] tipc: improve throughput between nodes in netns
> 
> Exactly. I agree with Xin. The major purpose of namespace is mainly to provide
> an isolated environment. But as this patch almost completely bypasses security
> check points of networking stack, the traffics between namespaces will be out
> of control. So I don't think this is a good idea.
> 
> Thanks,
> Ying
> 
> -----Original Message-----
> From: Jon Maloy [mailto:jon.maloy@ericsson.com]
> Sent: Friday, October 11, 2019 2:14 AM
> To: Xin Long
> Cc: Xue, Ying
> Subject: RE: [net-next] tipc: improve throughput between nodes in netns
> 
> Hi Xin,
> I am not surprised by you answer. Apart from concerns about security, this is
> the same objection I have heard from others when presenting this idea, and I
> suspect that this would also be the reaction if we try to deliver this to David.
> If we can achieve anything close to this by adding GSO to the veth interface I
> think that would be a safer approach.
> So, I suggest we put this one to rest for now, and I'll try to go ahead with the
> GSO approach instead.
> 
> Sorry Hoang for making you waste your time.
> 
> BR
> ///jon
> 
> > -----Original Message-----
> > From: Xin Long <lxin@redhat.com>
> > Sent: 10-Oct-19 07:14
> > To: Jon Maloy <jon.maloy@ericsson.com>
> > Cc: Ying Xue <ying.xue@windriver.com>
> > Subject: Re: [net-next] tipc: improve throughput between nodes in
> > netns
> >
> >
> >
> > ----- Original Message -----
> > > Ying and Xin,
> > > This is the "wormhole" functionality I have been suggesting a since
> > > while back.
> > > Basically, we send messages directly socket to socket between name
> > > spaces on the same host, not only between sockets within the same
> > > name
> > space.
> > > As you will understand this might have a huge positive impact on
> > > performance between e.g., docker containers or containers inside
> > Kubernetes pods.
> > >
> > > Please spend some time reviewing this, as it might be a
> > > controversial feature. It is imperative that we get security right here.
> > >
> > If I understand it right:
> >
> > With this patch, TIPC packets will skip all lower layers protocol
> > stack, like IP (udp media), ether link layer, which means all rules of
> > like tc, ovs, netfiler/br_netfilter will be skipped.
> >
> > I don't think this could be endured,  especially when it comes to a
> > cloud environment where many rules are configured on those virtual
> > NICs. Unless we have some special needs,  I'm not sure if this
> > performance improvement is worth a big protocol stack skip.
> >
> > Thanks.
> >
> > > BR
> > > ///jon
> > >
> > >
> > > -----Original Message-----
> > > From: Hoang Le <hoang.h.le@dektech.com.au>
> > > Sent: 2-Oct-19 06:26
> > > To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> > > tipc-discussion@lists.sourceforge.net
> > > Subject: [net-next] tipc: improve throughput between nodes in netns
> > >
> > > Introduce traffic cross namespaces transmission as local node.
> > > By this way, throughput between nodes in namespace as fast as local.
> > >
> > > Testcase:
> > > $ip netns exec 1 benchmark_client -c 100 $ip netns exec 2
> > > benchmark_server
> > >
> > > Before:
> > > +---------------------------------------------------------------------------------------------
> +
> > > |  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
> > > |  |
> > > |  [octets]  | Conns |    Conn   |  [ms]
> > > |  +------------------------------------------------+
> > > |            |       |           |           | Total [Msg/s] | Total [Mb/s] |
> > > |            |       |           |           | Per Conn [Mb/s] |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |        64  |  100  |    64000  |    13005  |       492103  |         251  |
> > > |        2  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |       256  |  100  |    32000  |     4964  |       644627  |        1320  |
> > > |       13  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |      1024  |  100  |    16000  |     4524  |       353612  |        2896  |
> > > |      28  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |      4096  |  100  |     8000  |     3675  |       217644  |        7131  |
> > > |      71  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |     16384  |  100  |     4000  |     7914  |        50540  |        6624  |
> > > |     66  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |     65536  |  100  |     2000  |    13000  |        15384  |        8065  |
> > > |     80  |
> > > +---------------------------------------------------------------------------------------------
> +
> > >
> > > After:
> > > +---------------------------------------------------------------------------------------------
> +
> > > |  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
> > > |  |
> > > |  [octets]  | Conns |    Conn   |  [ms]
> > > |  +------------------------------------------------+
> > > |            |       |           |           | Total [Msg/s] | Total [Mb/s] |
> > > |            |       |           |           | Per Conn [Mb/s] |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |        64  |  100  |    64000  |     7842  |       816090  |         417  |
> > > |        4  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |       256  |  100  |    32000  |     3593  |       890469  |        1823  |
> > > |       18  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |      1024  |  100  |    16000  |     1835  |       871828  |        7142  |
> > > |      71  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |      4096  |  100  |     8000  |     1134  |       704904  |       23098  |
> > > |      230  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |     16384  |  100  |     4000  |      878  |       455295  |       59676  |
> > > |     596  |
> > > +---------------------------------------------------------------------------------------------
> +
> > > |     65536  |  100  |     2000  |     1007  |       198487  |      104064  |
> > > |     1040  |
> > > +---------------------------------------------------------------------------------------------
> +
> > >
> > > Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> > > ---
> > >  net/tipc/discover.c   |  6 ++-
> > >  net/tipc/msg.h        | 10 +++++
> > >  net/tipc/name_distr.c |  2 +-
> > >  net/tipc/node.c       | 94
> > +++++++++++++++++++++++++++++++++++++++++--
> > >  net/tipc/node.h       |  4 +-
> > >  net/tipc/socket.c     |  6 +--
> > >  6 files changed, 111 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/net/tipc/discover.c b/net/tipc/discover.c index
> > > c138d68e8a69..98d4eea97eb7 100644
> > > --- a/net/tipc/discover.c
> > > +++ b/net/tipc/discover.c
> > > @@ -38,6 +38,8 @@
> > >  #include "node.h"
> > >  #include "discover.h"
> > >
> > > +#include <net/netns/hash.h>
> > > +
> > >  /* min delay during bearer start up */
> > >  #define TIPC_DISC_INIT	msecs_to_jiffies(125)
> > >  /* max delay if bearer has no links */ @@ -94,6 +96,7 @@ static
> > > void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
> > >  	msg_set_dest_domain(hdr, dest_domain);
> > >  	msg_set_bc_netid(hdr, tn->net_id);
> > >  	b->media->addr2msg(msg_media_addr(hdr), &b->addr);
> > > +	msg_set_peer_net_hash(hdr, net_hash_mix(net));
> > >  	msg_set_node_id(hdr, tipc_own_id(net));  }
> > >
> > > @@ -200,6 +203,7 @@ void tipc_disc_rcv(struct net *net, struct
> > > sk_buff
> > *skb,
> > >  	u8 peer_id[NODE_ID_LEN] = {0,};
> > >  	u32 dst = msg_dest_domain(hdr);
> > >  	u32 net_id = msg_bc_netid(hdr);
> > > +	u32 pnet_hash = msg_peer_net_hash(hdr);
> > >  	struct tipc_media_addr maddr;
> > >  	u32 src = msg_prevnode(hdr);
> > >  	u32 mtyp = msg_type(hdr);
> > > @@ -242,7 +246,7 @@ void tipc_disc_rcv(struct net *net, struct
> > > sk_buff
> > *skb,
> > >  	if (!tipc_in_scope(legacy, b->domain, src))
> > >  		return;
> > >  	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
> > > -			     &maddr, &respond, &dupl_addr);
> > > +			     pnet_hash, &maddr, &respond, &dupl_addr);
> > >  	if (dupl_addr)
> > >  		disc_dupl_alert(b, src, &maddr);
> > >  	if (!respond)
> > > diff --git a/net/tipc/msg.h b/net/tipc/msg.h index
> > > 0daa6f04ca81..a8d0f28094f2
> > > 100644
> > > --- a/net/tipc/msg.h
> > > +++ b/net/tipc/msg.h
> > > @@ -973,6 +973,16 @@ static inline void msg_set_grp_remitted(struct
> > > tipc_msg *m, u16 n)
> > >  	msg_set_bits(m, 9, 16, 0xffff, n);  }
> > >
> > > +static inline void msg_set_peer_net_hash(struct tipc_msg *m, u32 n) {
> > > +	msg_set_word(m, 9, n);
> > > +}
> > > +
> > > +static inline u32 msg_peer_net_hash(struct tipc_msg *m) {
> > > +	return msg_word(m, 9);
> > > +}
> > > +
> > >  /* Word 10
> > >   */
> > >  static inline u16 msg_grp_evt(struct tipc_msg *m) diff --git
> > > a/net/tipc/name_distr.c b/net/tipc/name_distr.c index
> > >  836e629e8f4a..5feaf3b67380 100644
> > > --- a/net/tipc/name_distr.c
> > > +++ b/net/tipc/name_distr.c
> > > @@ -146,7 +146,7 @@ static void named_distribute(struct net *net,
> > > struct sk_buff_head *list,
> > >  	struct publication *publ;
> > >  	struct sk_buff *skb = NULL;
> > >  	struct distr_item *item = NULL;
> > > -	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0) - INT_H_SIZE) /
> > > +	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0, false) -
> > > +INT_H_SIZE) /
> > >  			ITEM_SIZE) * ITEM_SIZE;
> > >  	u32 msg_rem = msg_dsz;
> > >
> > > diff --git a/net/tipc/node.c b/net/tipc/node.c index
> > > c8f6177dd5a2..9a4ffd647701 100644
> > > --- a/net/tipc/node.c
> > > +++ b/net/tipc/node.c
> > > @@ -45,6 +45,8 @@
> > >  #include "netlink.h"
> > >  #include "trace.h"
> > >
> > > +#include <net/netns/hash.h>
> > > +
> > >  #define INVALID_NODE_SIG	0x10000
> > >  #define NODE_CLEANUP_AFTER	300000
> > >
> > > @@ -126,6 +128,7 @@ struct tipc_node {
> > >  	struct timer_list timer;
> > >  	struct rcu_head rcu;
> > >  	unsigned long delete_at;
> > > +	struct net *pnet;
> > >  };
> > >
> > >  /* Node FSM states and events:
> > > @@ -184,7 +187,7 @@ static struct tipc_link *node_active_link(struct
> > > tipc_node *n, int sel)
> > >  	return n->links[bearer_id].link;
> > >  }
> > >
> > > -int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
> > > +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool
> > > +connected)
> > >  {
> > >  	struct tipc_node *n;
> > >  	int bearer_id;
> > > @@ -194,6 +197,14 @@ int tipc_node_get_mtu(struct net *net, u32
> > > addr,
> > > u32
> > > sel)
> > >  	if (unlikely(!n))
> > >  		return mtu;
> > >
> > > +	/* Allow MAX_MSG_SIZE when building connection oriented message
> > > +	 * if they are in the same core network
> > > +	 */
> > > +	if (n->pnet && connected) {
> > > +		tipc_node_put(n);
> > > +		return mtu;
> > > +	}
> > > +
> > >  	bearer_id = n->active_links[sel & 1];
> > >  	if (likely(bearer_id != INVALID_BEARER_ID))
> > >  		mtu = n->links[bearer_id].mtu;
> > > @@ -361,11 +372,14 @@ static void tipc_node_write_unlock(struct
> > > tipc_node *n) }
> > >
> > >  static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
> > > -					  u8 *peer_id, u16 capabilities)
> > > +					  u8 *peer_id, u16 capabilities,
> > > +					  u32 signature, u32 pnet_hash)
> > >  {
> > >  	struct tipc_net *tn = net_generic(net, tipc_net_id);
> > >  	struct tipc_node *n, *temp_node;
> > > +	struct tipc_net *tn_peer;
> > >  	struct tipc_link *l;
> > > +	struct net *tmp;
> > >  	int bearer_id;
> > >  	int i;
> > >
> > > @@ -400,6 +414,23 @@ static struct tipc_node
> > > *tipc_node_create(struct net *net, u32 addr,
> > >  	memcpy(&n->peer_id, peer_id, 16);
> > >  	n->net = net;
> > >  	n->capabilities = capabilities;
> > > +	n->pnet = NULL;
> > > +	for_each_net_rcu(tmp) {
> > > +		/* Integrity checking whether node exists in namespace or not */
> > > +		if (net_hash_mix(tmp) != pnet_hash)
> > > +			continue;
> > > +		tn_peer = net_generic(tmp, tipc_net_id);
> > > +		if (!tn_peer)
> > > +			continue;
> > > +
> > > +		if ((tn_peer->random & 0x7fff) != (signature & 0x7fff))
> > > +			continue;
> > > +
> > > +		if (!memcmp(n->peer_id, tn_peer->node_id, NODE_ID_LEN)) {
> > > +			n->pnet = tmp;
> > > +			break;
> > > +		}
> > > +	}
> > >  	kref_init(&n->kref);
> > >  	rwlock_init(&n->lock);
> > >  	INIT_HLIST_NODE(&n->hash);
> > > @@ -979,7 +1010,7 @@ u32 tipc_node_try_addr(struct net *net, u8 *id,
> > > u32
> > > addr)
> > >
> > >  void tipc_node_check_dest(struct net *net, u32 addr,
> > >  			  u8 *peer_id, struct tipc_bearer *b,
> > > -			  u16 capabilities, u32 signature,
> > > +			  u16 capabilities, u32 signature, u32 pnet_hash,
> > >  			  struct tipc_media_addr *maddr,
> > >  			  bool *respond, bool *dupl_addr)  { @@ -998,7 +1029,8
> @@ void
> > > tipc_node_check_dest(struct net *net, u32
> > addr,
> > >  	*dupl_addr = false;
> > >  	*respond = false;
> > >
> > > -	n = tipc_node_create(net, addr, peer_id, capabilities);
> > > +	n = tipc_node_create(net, addr, peer_id, capabilities, signature,
> > > +			     pnet_hash);
> > >  	if (!n)
> > >  		return;
> > >
> > > @@ -1424,6 +1456,49 @@ static int __tipc_nl_add_node(struct
> > > tipc_nl_msg *msg, struct tipc_node *node)
> > >  	return -EMSGSIZE;
> > >  }
> > >
> > > +static void tipc_lxc_xmit(struct net *pnet, struct sk_buff_head
> > > +*list) {
> > > +	struct tipc_msg *hdr = buf_msg(skb_peek(list));
> > > +	struct sk_buff_head inputq;
> > > +
> > > +	switch (msg_user(hdr)) {
> > > +	case TIPC_LOW_IMPORTANCE:
> > > +	case TIPC_MEDIUM_IMPORTANCE:
> > > +	case TIPC_HIGH_IMPORTANCE:
> > > +	case TIPC_CRITICAL_IMPORTANCE:
> > > +		if (msg_connected(hdr) || msg_named(hdr)) {
> > > +			spin_lock_init(&list->lock);
> > > +			tipc_sk_rcv(pnet, list);
> > > +			return;
> > > +		}
> > > +		if (msg_mcast(hdr)) {
> > > +			skb_queue_head_init(&inputq);
> > > +			tipc_sk_mcast_rcv(pnet, list, &inputq);
> > > +			__skb_queue_purge(list);
> > > +			skb_queue_purge(&inputq);
> > > +			return;
> > > +		}
> > > +		return;
> > > +	case MSG_FRAGMENTER:
> > > +		if (tipc_msg_assemble(list)) {
> > > +			skb_queue_head_init(&inputq);
> > > +			tipc_sk_mcast_rcv(pnet, list, &inputq);
> > > +			__skb_queue_purge(list);
> > > +			skb_queue_purge(&inputq);
> > > +		}
> > > +		return;
> > > +	case LINK_PROTOCOL:
> > > +	case NAME_DISTRIBUTOR:
> > > +	case GROUP_PROTOCOL:
> > > +	case CONN_MANAGER:
> > > +	case TUNNEL_PROTOCOL:
> > > +	case BCAST_PROTOCOL:
> > > +		return;
> > > +	default:
> > > +		return;
> > > +	};
> > > +}
> > > +
> > >  /**
> > >   * tipc_node_xmit() is the general link level function for message sending
> > >   * @net: the applicable net namespace @@ -1439,6 +1514,7 @@ int
> > > tipc_node_xmit(struct net *net, struct sk_buff_head *list,
> > >  	struct tipc_link_entry *le = NULL;
> > >  	struct tipc_node *n;
> > >  	struct sk_buff_head xmitq;
> > > +	bool node_up = false;
> > >  	int bearer_id;
> > >  	int rc;
> > >
> > > @@ -1455,6 +1531,16 @@ int tipc_node_xmit(struct net *net, struct
> > > sk_buff_head *list,
> > >  		return -EHOSTUNREACH;
> > >  	}
> > >
> > > +	node_up = node_is_up(n);
> > > +	if (node_up && n->pnet && check_net(n->pnet)) {
> > > +		/* xmit inner linux container */
> > > +		tipc_lxc_xmit(n->pnet, list);
> > > +		if (likely(skb_queue_empty(list))) {
> > > +			tipc_node_put(n);
> > > +			return 0;
> > > +		}
> > > +	}
> > > +
> > >  	tipc_node_read_lock(n);
> > >  	bearer_id = n->active_links[selector & 1];
> > >  	if (unlikely(bearer_id == INVALID_BEARER_ID)) { diff --git
> > >  	a/net/tipc/node.h b/net/tipc/node.h index
> > 291d0ecd4101..11eb95ce358b
> > >  	100644
> > > --- a/net/tipc/node.h
> > > +++ b/net/tipc/node.h
> > > @@ -75,7 +75,7 @@ u32 tipc_node_get_addr(struct tipc_node *node);
> > >  u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr);  void
> > > tipc_node_check_dest(struct net *net, u32 onode, u8 *peer_id128,
> > >  			  struct tipc_bearer *bearer,
> > > -			  u16 capabilities, u32 signature,
> > > +			  u16 capabilities, u32 signature, u32 pnet_hash,
> > >  			  struct tipc_media_addr *maddr,
> > >  			  bool *respond, bool *dupl_addr);  void
> > > tipc_node_delete_links(struct net *net, int bearer_id); @@ -92,7
> > > +92,7 @@ void tipc_node_unsubscribe(struct net *net, struct
> > > list_head *subscr,
> > >  u32 addr);  void tipc_node_broadcast(struct net *net, struct
> > > sk_buff *skb);  int tipc_node_add_conn(struct net *net, u32 dnode,
> > > u32 port,
> > > u32  peer_port);  void tipc_node_remove_conn(struct net *net, u32
> > > dnode, u32  port); -int tipc_node_get_mtu(struct net *net, u32 addr,
> > > u32 sel);
> > > +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool
> > > +connected);
> > >  bool tipc_node_is_up(struct net *net, u32 addr);
> > >  u16 tipc_node_get_capabilities(struct net *net, u32 addr);  int
> > > tipc_nl_node_dump(struct sk_buff *skb, struct netlink_callback *cb);
> > > diff  --git a/net/tipc/socket.c b/net/tipc/socket.c index
> > > 3b9f8cc328f5..fb24df03da6c 100644
> > > --- a/net/tipc/socket.c
> > > +++ b/net/tipc/socket.c
> > > @@ -854,7 +854,7 @@ static int tipc_send_group_msg(struct net *net,
> > > struct tipc_sock *tsk,
> > >
> > >  	/* Build message as chain of buffers */
> > >  	__skb_queue_head_init(&pkts);
> > > -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> > > +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
> > >  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> > >  	if (unlikely(rc != dlen))
> > >  		return rc;
> > > @@ -1388,7 +1388,7 @@ static int __tipc_sendmsg(struct socket *sock,
> > > struct msghdr *m, size_t dlen)
> > >  		return rc;
> > >
> > >  	__skb_queue_head_init(&pkts);
> > > -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> > > +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
> > >  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> > >  	if (unlikely(rc != dlen))
> > >  		return rc;
> > > @@ -1526,7 +1526,7 @@ static void tipc_sk_finish_conn(struct
> > > tipc_sock *tsk,
> > > u32 peer_port,
> > >  	sk_reset_timer(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
> > >  	tipc_set_sk_state(sk, TIPC_ESTABLISHED);
> > >  	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
> > > -	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
> > > +	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid,
> > > +true);
> > >  	tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
> > >  	__skb_queue_purge(&sk->sk_write_queue);
> > >  	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
> > > --
> > > 2.20.1
> > >
> > >

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
