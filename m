Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C33D1F371C
	for <lists+tipc-discussion@lfdr.de>; Tue,  9 Jun 2020 11:36:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jiafl-0006x8-5E; Tue, 09 Jun 2020 09:35:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1jiafj-0006x0-E0
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 09:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MRVQiB1qh/bDzDBYex21f/4uXCtXsj44v7ahVWvfBe0=; b=eFKnZgwRC6uk2l20qvIg5D2B8g
 yS5N7LIYcXmfIYidxai2nqotMZOVjupLL84AF6g494eB2MKz/OkeQSOIMaSYDA1BH0qlWaffHXvuE
 i4iGtjhe0yGId5f8phjnPrUZGsin9WvGnYliUq39SAuA4z3EmqP+WlvX8TD36vXHYsuE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MRVQiB1qh/bDzDBYex21f/4uXCtXsj44v7ahVWvfBe0=; b=m45BTCGvwUHSVE4Ptmv/fTY7VG
 zOVh6Dhbq3bbMNd6iRwIWKudNw4U9HlYy4+vfcLhOvFqQNiHDGlDZucRI1jdo9SijU1GIkowUOF1a
 ELeX/TrEQitWtWSrdomc5WAkvy6qzJIm/C2e8WflXDBy9uyphXDhhchMCJpW4qwsAtG8=;
Received: from mail-eopbgr60116.outbound.protection.outlook.com
 ([40.107.6.116] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jiafb-00ESvO-O9
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 09:35:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXV133sOabpqsl6r3cdSTLQz3jw+OszM+0JdyT0kcc6k3qwP7cQwykmjhZLLBbmMXorpDFBCgs40VE9Cpqu1SMWptjsyDkvCpXnEZZQgbgqgQtwt93NMeuScdaLvcPSgeK4OMA3XUHLav56qDJWOoTp8Hs9sFDi2M6ZlUYYy5IGtdFdvupQXxBE4VM5D2yFc7uKDtfYqZUkYR9jc+emwXfTpl8EeV9sDLKtx8ppqAcyMi/v78JkbXEYop/86+H3gTYO2Uc3EsRop9ym/GbqLYRxIM5FVH6AMjRsRACxm26rmuzcxuebEgOTkDObRISkNfmavibRuZOX3XpdjZlTwYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MRVQiB1qh/bDzDBYex21f/4uXCtXsj44v7ahVWvfBe0=;
 b=cioLIvUS5YgZCx6/V+nRT57zHamwoBfkq23IHQRPugBI/GZCU4pH3vhbve41JZmfHodY6S/FeOjj0cqtAdPUL/mHXf5vb4dVejeN2rtymNwoyooTvmrWJaBihOLURotsDR3S7njpsXQ1GkHcHKDOQTOaT380oUSZQTKVVfWFcQn4XTjENWSKK8vrDzcgCFvdVq8OJln0FudXkPxBTvqS+mcNfgphIuIfv1o04KYyCBNhZEV5I7/ehnOhl0BzMN2p30yha2k/stW6PXJTy9CTp66cIG8qYZ2Kw3QclA3aGrK2Eop3kE3XflVfeE31j7Z1cchLmZXpdt7qXzw1Xkdsdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MRVQiB1qh/bDzDBYex21f/4uXCtXsj44v7ahVWvfBe0=;
 b=DOegfatxAf4A+xOiLTtkJ8NifEoAilshQQ8M5nad9a4W3/H61AToUteJ/32TtPT+aCj++xqNoBvuq+BXJDgjgGzIAoPlvV3ZPnh3nJs7ffVnPCNV8nZXTT67H96z4A6LqwHzVWeNW/iTk+zgM/BSWX8+qUvZ0m+6it+yVzEw+2Y=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4637.eurprd05.prod.outlook.com (2603:10a6:802:5b::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Tue, 9 Jun
 2020 09:20:33 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::397e:56ce:f98:8220]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::397e:56ce:f98:8220%6]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 09:20:33 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [next-net v6] tipc: update a binding service via broadcast
Thread-Index: AQHWOw5CYZEbskJhw0Gj89pKpwHjBqjJ/RSAgAJ8+PCAAkKNAIABSRag
Date: Tue, 9 Jun 2020 09:20:33 +0000
Message-ID: <VI1PR05MB460557CE32A3D2DB347CD746F1820@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20200605075212.18700-1-hoang.h.le@dektech.com.au>
 <19d16ffb-f229-5e30-b392-7ecc41721576@redhat.com>
 <VI1PR05MB4605728F1F5CE529D5327784F1840@VI1PR05MB4605.eurprd05.prod.outlook.com>
 <4086f94e-61a0-c7f5-42d5-d6b9d9cbe5c7@redhat.com>
In-Reply-To: <4086f94e-61a0-c7f5-42d5-d6b9d9cbe5c7@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7bf1c2a-ed24-4935-7550-08d80c565c9b
x-ms-traffictypediagnostic: VI1PR05MB4637:
x-microsoft-antispam-prvs: <VI1PR05MB46378526CCA56F48A2FBEB7EF1820@VI1PR05MB4637.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:813;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MF9nDzgVBzE82jMz7AndxVAkm81zfua6ay5ufzunhIl3xBgcMAgdqL0ffC3fP7NjL1AqCC+x6rG49vwlGFJmkdbxYOVxWnBbknYsgGIyd2i+0nSMTS3gbzCqNhR3hEydpVKvhSKMgvKI/O20n75aCNOAXlw7d6HjiCPsuhW2ABEHQSNtUcDu/PH8hZ9lHeB2zF+sGgAz7TscS4NG1M6nHlSp07/CsoXTAoqaFA5zd2Hr+4ZRWCZjdj69lKjL+NzUe7MlgSPPMlDNyynnMeSxhE0WM1kPtIatb4/eyWqhG1kglcar00lcnSsIrY/c7uOyR6C0RYMCY2llOcS7oi/0uw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(136003)(396003)(39850400004)(346002)(6506007)(53546011)(8676002)(66946007)(83380400001)(2906002)(5660300002)(186003)(7696005)(26005)(76116006)(64756008)(66556008)(66476007)(66446008)(478600001)(30864003)(33656002)(55016002)(71200400001)(9686003)(86362001)(52536014)(316002)(8936002)(15650500001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WG3lHu3EvFzkDH3Ep5GYzXZ/Zyu2l2riOm+c/CYMA7MiAK52ct0ojhyKpBtspyXnb/ZyI4D9y4+l3ZeKivFFsdzCtp2SPOjvfG0ZcTWoBVlwFm0DAMxzOTMRZ3aXvM6HQW/zMDfrA5EwuUJ6IXtMmwsNVKwxHGULYJYynASqWxTN439ViPfUIJl8E6PqS+F634PR+mwu8cIExdn+8RmTd/dlfVlAAaS0AbH2BzGYz/qv3sW0wJJkSL0fbAoLd85QLWwFQ26WFdTO8pHCySQ2iiXHeZF/Wa6YOosJuealRjRSWX+GXMNNY+XPcS28qEriPg6q65lta395aIKwLTsBjTJoiWwUkE9RGxkI5dyrq/FMGUQE3zstZ4/g1aITLhLh0wlSKCMuxBUJakKyzwA1LvZ7t+EGBNb/rR/g6Z4boRXlICBrgkkIHbddKGlCqNL+udAqwrD25jBuWMG0J95XY5+S9ufdJrUsEl17HLlw4Gw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: f7bf1c2a-ed24-4935-7550-08d80c565c9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 09:20:33.2128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w7+YyVdu475nkA8hC7iOICLsOz0B9BQtycOFfUlsLxLKGtNwgqXe8D72dHVHgPuKs7QaM1CDFAQwi437UHmnqk9dfKWlCT7AwQz95rDaVMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4637
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.116 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jiafb-00ESvO-O9
Subject: Re: [tipc-discussion] [next-net v6] tipc: update a binding service
 via broadcast
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



-----Original Message-----
From: Jon Maloy <jmaloy@redhat.com> 
Sent: Monday, June 8, 2020 8:33 PM
To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Subject: Re: [next-net v6] tipc: update a binding service via broadcast



On 6/6/20 11:10 PM, Hoang Huu Le wrote:
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Friday, June 5, 2020 8:03 PM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Subject: Re: [next-net v6] tipc: update a binding service via broadcast
>
>
>
> On 6/5/20 3:52 AM, Hoang Huu Le wrote:
>> Currently, updating binding table (add service binding to
>> name table/withdraw a service binding) is being sent over replicast.
>> However, if we are scaling up clusters to > 100 nodes/containers this
>> method is less affection because of looping through nodes in a cluster one
>> by one.
[...]
>> +		if (*open && (*rcv_nxt == seqno)) {
>> +			(*rcv_nxt)++;
>> +			__skb_unlink(skb, namedq);
>> +			return skb;
>> +		}
>> +
>> +		if (less(seqno, *rcv_nxt)) {
>> +			__skb_unlink(skb, namedq);
>> +			kfree_skb(skb);
>> +			continue;
> Still not needed. This queue should be flushed in
> tipc_node_lost_contact(), which I now see we don't do.
> [Hoang] Yes, that's right. I will verify and send it out.
>
> This has to e fixed too.
> ///jon
I hate to admit it, but we might actually need this test after all. 
Imagine that somebody has done 'publish' just after the broadcast link 
came up (in tipc_bcast_add_peer()) , but before tipc_named_node_up() is 
called. The context of those two calls is not atomic, so I think it is 
possible that this publication might end up both in the bcast_link 
backlog queue and in the bulk distribution.
This publication message will have a named_seqno that is lower than the 
agreed synch point, and should be dropped at reception.

Given the crucial role of the binding table for the overall TIPC 
functionality I think it is better be safe than sorry here, and keep 
this test.
[Hoang] Finally, I'm able to reproduce the problem as same as above scene:
<code>
357                 if (less(seqno, *rcv_nxt)) {
358                         pr_info("DROP[%x->%x]: %s blk %d lblk %d nxt %d legacy %d seqno %u bc %u hsz %u dsz %u qlen %u\n",
359                                 msg_orignode(hdr), tipc_own_addr(net),
360                                 msg_type(hdr) == PUBLICATION ? "PUBL":"DRAW",
361                                 msg_is_bulk(hdr), msg_is_last_bulk(hdr),
362                                 *rcv_nxt, msg_is_legacy(hdr),
363                                 msg_named_seqno(hdr), msg_non_seq(hdr),
364                                 msg_hdr_sz(hdr), msg_data_sz(hdr),
365                                 skb_queue_len(namedq));
366
367                         __skb_unlink(skb, namedq);
368                         kfree_skb(skb);
369                         continue;
370                 }
</code>
-----------
[12528.036895] tipc: Established link <1001024:eth0-1001001:brtipc> on network plane A
[12528.043857] tipc: Established link <1001002:brtipc-1001001:brtipc> on network plane A
[12528.136462] tipc: DROP[1001001->1001002]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3878 bc 0 hsz 40 dsz 20 qlen 23
[12528.140864] tipc: DROP[1001001->1001002]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3879 bc 0 hsz 40 dsz 20 qlen 22
[...]
[12528.210959] tipc: DROP[1001001->1001002]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3893 bc 0 hsz 40 dsz 20 qlen 8
[12528.218903] tipc: DROP[1001001->1001002]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3894 bc 0 hsz 40 dsz 20 qlen 7
[12528.227214] tipc: DROP[1001001->1001024]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3878 bc 0 hsz 40 dsz 20 qlen 23
[12528.231285] tipc: DROP[1001001->1001024]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3879 bc 0 hsz 40 dsz 20 qlen 22
[...]
[12528.277445] tipc: DROP[1001001->1001024]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3893 bc 0 hsz 40 dsz 20 qlen 8
[12528.280847] tipc: DROP[1001001->1001024]: DRAW blk 0 lblk 0 nxt 3895 legacy 0 seqno 3894 bc 0 hsz 40 dsz 20 qlen 7 
---  
I will re-post the patch including the test as well.

///jon

>> +		}
>> +	}
>> +	return NULL;
>> +}
>> +
>>    /**
>>     * tipc_named_rcv - process name table update messages sent by another node
>>     */
>> -void tipc_named_rcv(struct net *net, struct sk_buff_head *inputq)
>> +void tipc_named_rcv(struct net *net, struct sk_buff_head *namedq,
>> +		    u16 *rcv_nxt, bool *open)
>>    {
>> -	struct tipc_net *tn = net_generic(net, tipc_net_id);
>> -	struct tipc_msg *msg;
>> +	struct tipc_net *tn = tipc_net(net);
>>    	struct distr_item *item;
>> -	uint count;
>> -	u32 node;
>> +	struct tipc_msg *hdr;
>>    	struct sk_buff *skb;
>> -	int mtype;
>> +	u32 count, node = 0;
>>    
>>    	spin_lock_bh(&tn->nametbl_lock);
>> -	for (skb = skb_dequeue(inputq); skb; skb = skb_dequeue(inputq)) {
>> -		skb_linearize(skb);
>> -		msg = buf_msg(skb);
>> -		mtype = msg_type(msg);
>> -		item = (struct distr_item *)msg_data(msg);
>> -		count = msg_data_sz(msg) / ITEM_SIZE;
>> -		node = msg_orignode(msg);
>> +	while ((skb = tipc_named_dequeue(namedq, rcv_nxt, open))) {
>> +		hdr = buf_msg(skb);
>> +		node = msg_orignode(hdr);
>> +		item = (struct distr_item *)msg_data(hdr);
>> +		count = msg_data_sz(hdr) / ITEM_SIZE;
>>    		while (count--) {
>> -			tipc_update_nametbl(net, item, node, mtype);
>> +			tipc_update_nametbl(net, item, node, msg_type(hdr));
>>    			item++;
>>    		}
>>    		kfree_skb(skb);
>> @@ -345,6 +402,6 @@ void tipc_named_reinit(struct net *net)
>>    		publ->node = self;
>>    	list_for_each_entry_rcu(publ, &nt->cluster_scope, binding_node)
>>    		publ->node = self;
>> -
>> +	nt->rc_dests = 0;
>>    	spin_unlock_bh(&tn->nametbl_lock);
>>    }
>> diff --git a/net/tipc/name_distr.h b/net/tipc/name_distr.h
>> index 63fc73e0fa6c..092323158f06 100644
>> --- a/net/tipc/name_distr.h
>> +++ b/net/tipc/name_distr.h
>> @@ -67,11 +67,14 @@ struct distr_item {
>>    	__be32 key;
>>    };
>>    
>> +void tipc_named_bcast(struct net *net, struct sk_buff *skb);
>>    struct sk_buff *tipc_named_publish(struct net *net, struct publication *publ);
>>    struct sk_buff *tipc_named_withdraw(struct net *net, struct publication *publ);
>> -void tipc_named_node_up(struct net *net, u32 dnode);
>> -void tipc_named_rcv(struct net *net, struct sk_buff_head *msg_queue);
>> +void tipc_named_node_up(struct net *net, u32 dnode, u16 capabilities);
>> +void tipc_named_rcv(struct net *net, struct sk_buff_head *namedq,
>> +		    u16 *rcv_nxt, bool *open);
>>    void tipc_named_reinit(struct net *net);
>> -void tipc_publ_notify(struct net *net, struct list_head *nsub_list, u32 addr);
>> +void tipc_publ_notify(struct net *net, struct list_head *nsub_list,
>> +		      u32 addr, u16 capabilities);
>>    
>>    #endif
>> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
>> index 359b2bc888cf..2ac33d32edc2 100644
>> --- a/net/tipc/name_table.c
>> +++ b/net/tipc/name_table.c
>> @@ -729,6 +729,7 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>>    	struct tipc_net *tn = tipc_net(net);
>>    	struct publication *p = NULL;
>>    	struct sk_buff *skb = NULL;
>> +	u32 rc_dests;
>>    
>>    	spin_lock_bh(&tn->nametbl_lock);
>>    
>> @@ -743,12 +744,14 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>>    		nt->local_publ_count++;
>>    		skb = tipc_named_publish(net, p);
>>    	}
>> +	rc_dests = nt->rc_dests;
>>    exit:
>>    	spin_unlock_bh(&tn->nametbl_lock);
>>    
>>    	if (skb)
>> -		tipc_node_broadcast(net, skb);
>> +		tipc_node_broadcast(net, skb, rc_dests);
>>    	return p;
>> +
>>    }
>>    
>>    /**
>> @@ -762,6 +765,7 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>>    	u32 self = tipc_own_addr(net);
>>    	struct sk_buff *skb = NULL;
>>    	struct publication *p;
>> +	u32 rc_dests;
>>    
>>    	spin_lock_bh(&tn->nametbl_lock);
>>    
>> @@ -775,10 +779,11 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>>    		pr_err("Failed to remove local publication {%u,%u,%u}/%u\n",
>>    		       type, lower, upper, key);
>>    	}
>> +	rc_dests = nt->rc_dests;
>>    	spin_unlock_bh(&tn->nametbl_lock);
>>    
>>    	if (skb) {
>> -		tipc_node_broadcast(net, skb);
>> +		tipc_node_broadcast(net, skb, rc_dests);
>>    		return 1;
>>    	}
>>    	return 0;
>> diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
>> index 728bc7016c38..8064e1986e2c 100644
>> --- a/net/tipc/name_table.h
>> +++ b/net/tipc/name_table.h
>> @@ -106,6 +106,8 @@ struct name_table {
>>    	struct list_head cluster_scope;
>>    	rwlock_t cluster_scope_lock;
>>    	u32 local_publ_count;
>> +	u32 rc_dests;
>> +	u32 snd_nxt;
>>    };
>>    
>>    int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
>> diff --git a/net/tipc/node.c b/net/tipc/node.c
>> index 803a3a6d0f50..ad8d7bce1f98 100644
>> --- a/net/tipc/node.c
>> +++ b/net/tipc/node.c
>> @@ -75,6 +75,8 @@ struct tipc_bclink_entry {
>>    	struct sk_buff_head arrvq;
>>    	struct sk_buff_head inputq2;
>>    	struct sk_buff_head namedq;
>> +	u16 named_rcv_nxt;
>> +	bool named_open;
>>    };
>>    
>>    /**
>> @@ -396,10 +398,10 @@ static void tipc_node_write_unlock(struct tipc_node *n)
>>    	write_unlock_bh(&n->lock);
>>    
>>    	if (flags & TIPC_NOTIFY_NODE_DOWN)
>> -		tipc_publ_notify(net, publ_list, addr);
>> +		tipc_publ_notify(net, publ_list, addr, n->capabilities);
>>    
>>    	if (flags & TIPC_NOTIFY_NODE_UP)
>> -		tipc_named_node_up(net, addr);
>> +		tipc_named_node_up(net, addr, n->capabilities);
>>    
>>    	if (flags & TIPC_NOTIFY_LINK_UP) {
>>    		tipc_mon_peer_up(net, addr, bearer_id);
>> @@ -1729,12 +1731,23 @@ int tipc_node_distr_xmit(struct net *net, struct sk_buff_head *xmitq)
>>    	return 0;
>>    }
>>    
>> -void tipc_node_broadcast(struct net *net, struct sk_buff *skb)
>> +void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
>>    {
>> +	struct sk_buff_head xmitq;
>>    	struct sk_buff *txskb;
>>    	struct tipc_node *n;
>> +	u16 dummy;
>>    	u32 dst;
>>    
>> +	/* Use broadcast if all nodes support it */
>> +	if (!rc_dests && tipc_bcast_get_mode(net) != BCLINK_MODE_RCAST) {
>> +		__skb_queue_head_init(&xmitq);
>> +		__skb_queue_tail(&xmitq, skb);
>> +		tipc_bcast_xmit(net, &xmitq, &dummy);
>> +		return;
>> +	}
>> +
>> +	/* Otherwise use legacy replicast method */
>>    	rcu_read_lock();
>>    	list_for_each_entry_rcu(n, tipc_nodes(net), list) {
>>    		dst = n->addr;
>> @@ -1749,7 +1762,6 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb)
>>    		tipc_node_xmit_skb(net, txskb, dst, 0);
>>    	}
>>    	rcu_read_unlock();
>> -
>>    	kfree_skb(skb);
>>    }
>>    
>> @@ -1844,7 +1856,9 @@ static void tipc_node_bc_rcv(struct net *net, struct sk_buff *skb, int bearer_id
>>    
>>    	/* Handle NAME_DISTRIBUTOR messages sent from 1.7 nodes */
>>    	if (!skb_queue_empty(&n->bc_entry.namedq))
>> -		tipc_named_rcv(net, &n->bc_entry.namedq);
>> +		tipc_named_rcv(net, &n->bc_entry.namedq,
>> +			       &n->bc_entry.named_rcv_nxt,
>> +			       &n->bc_entry.named_open);
>>    
>>    	/* If reassembly or retransmission failure => reset all links to peer */
>>    	if (rc & TIPC_LINK_DOWN_EVT)
>> @@ -2109,7 +2123,9 @@ void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
>>    		tipc_node_link_down(n, bearer_id, false);
>>    
>>    	if (unlikely(!skb_queue_empty(&n->bc_entry.namedq)))
>> -		tipc_named_rcv(net, &n->bc_entry.namedq);
>> +		tipc_named_rcv(net, &n->bc_entry.namedq,
>> +			       &n->bc_entry.named_rcv_nxt,
>> +			       &n->bc_entry.named_open);
>>    
>>    	if (unlikely(!skb_queue_empty(&n->bc_entry.inputq1)))
>>    		tipc_node_mcast_rcv(n);
>> diff --git a/net/tipc/node.h b/net/tipc/node.h
>> index a6803b449a2c..9f6f13f1604f 100644
>> --- a/net/tipc/node.h
>> +++ b/net/tipc/node.h
>> @@ -55,7 +55,8 @@ enum {
>>    	TIPC_MCAST_RBCTL      = (1 << 7),
>>    	TIPC_GAP_ACK_BLOCK    = (1 << 8),
>>    	TIPC_TUNNEL_ENHANCED  = (1 << 9),
>> -	TIPC_NAGLE            = (1 << 10)
>> +	TIPC_NAGLE            = (1 << 10),
>> +	TIPC_NAMED_BCAST      = (1 << 11)
>>    };
>>    
>>    #define TIPC_NODE_CAPABILITIES (TIPC_SYN_BIT           |  \
>> @@ -68,7 +69,8 @@ enum {
>>    				TIPC_MCAST_RBCTL       |   \
>>    				TIPC_GAP_ACK_BLOCK     |   \
>>    				TIPC_TUNNEL_ENHANCED   |   \
>> -				TIPC_NAGLE)
>> +				TIPC_NAGLE             |   \
>> +				TIPC_NAMED_BCAST)
>>    
>>    #define INVALID_BEARER_ID -1
>>    
>> @@ -101,7 +103,7 @@ int tipc_node_xmit_skb(struct net *net, struct sk_buff *skb, u32 dest,
>>    		       u32 selector);
>>    void tipc_node_subscribe(struct net *net, struct list_head *subscr, u32 addr);
>>    void tipc_node_unsubscribe(struct net *net, struct list_head *subscr, u32 addr);
>> -void tipc_node_broadcast(struct net *net, struct sk_buff *skb);
>> +void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests);
>>    int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32 peer_port);
>>    void tipc_node_remove_conn(struct net *net, u32 dnode, u32 port);
>>    int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool connected);


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
