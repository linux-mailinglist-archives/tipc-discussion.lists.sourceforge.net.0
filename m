Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EB31F1122
	for <lists+tipc-discussion@lfdr.de>; Mon,  8 Jun 2020 03:47:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ji6sU-0004cV-Cb; Mon, 08 Jun 2020 01:47:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1ji6sS-0004c9-8S
 for tipc-discussion@lists.sourceforge.net; Mon, 08 Jun 2020 01:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oXCxJLujPYUdeE2MpGheFl6CW3bctos8GXhzD58InqY=; b=HUI4vDwNo6Sf+noXn2ux8y+qDY
 +StJE6jdCDqF1OM7hCBQz6zk2QQYJ6oz2mDXXefA7f2XQdJlJdaRK0wLkEYU3N77guW1qsgUDq3FV
 z4oLAiXXQtbP/27zGeib6bfjKw8+7xIcvQABB33slPqzIslvBvRQDDjSN8TUCtvY4CQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oXCxJLujPYUdeE2MpGheFl6CW3bctos8GXhzD58InqY=; b=cNWgwQFxkngQwWHbRG43L8WXF3
 ayKA36RH82CesWqEMkVZb6ymHKpWd4dB9Tya0PqBmmnl7WWducV5K4/+su1/KJCS5m2/w5HhxFhIr
 Y7lzRLRpjc54KAQDlfGvMRhCVDoieQ04rUHWzVXu1hAz3rEyXlgsloUnXctlWhkeFlQ8=;
Received: from mail-vi1eur05on2133.outbound.protection.outlook.com
 ([40.107.21.133] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ji6sJ-00FYYM-4z
 for tipc-discussion@lists.sourceforge.net; Mon, 08 Jun 2020 01:47:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gIzWzn7elGAF0iqyz751wnI990gA8YOJm2MN54B8O5+YrP/KKvZ0RYGmvcHPDIIsFfU76qE/1hcPhPAUhosUhV+XbuWjxVaPpXk+N4dPS+VOKd4TKNs8jUNbgcp1nbx+FUp8N1XYK9Q8ws0izC/kfQpmdy5gVDqM07GzMf1gr+VCcoYAIFheaA7XtVdFnEMpwbYF26E975zfY76YCvACg3UYPEIgXN7G0QPSkVnvSk61Sxu3GwxlHhVufaLj0JNxOKyq1Ywtqw7DyiGpTXXbUQgz1GzetFceL3aYefe2Rd/hvuWcuuYEbhG/lV6WIyOoT78HuRivvthrnEuyid05Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oXCxJLujPYUdeE2MpGheFl6CW3bctos8GXhzD58InqY=;
 b=CGoVdEgrzUYLjU5kJBMi7U/NoGSpM9NzaU5pZUAO6yy/dOH52J5RhLD/Ky0lgACfSRYfbYHirL8QymEdbe+Uu+oViK8mhbH3ySTP+8rYV5EXRpGPo8gMNbA0crzzImt5n2BvywvZiRTIn9teLTNf+HfiUVyCb7aZeujyf5WdEB1UBbKD00PKZE6J7kelILDanaBo4A4a/2aM5RjnZ7SnkpiFk7fN3AHRmbp30vX0WPKpNvTcmnzto9BqqNixosYt8B21tTpKvBwrCv1yA0n9cIJ1giz0w9m5TBX1tcY/d7ZoGnxEpUHQwXdst0HK5FGlPId/dg8G8700TSX0Y8PqXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oXCxJLujPYUdeE2MpGheFl6CW3bctos8GXhzD58InqY=;
 b=cgfyz+8eUu2Fh8Kh35Go0ScDEXA8qVz/Kwo/H3z5P1j3piPEewP7HVr2QA4WcGFGNFoIZa3KAlqq97DjwiEs0MrrH3fLBTX/c+23JL7+L9nnrloRQ5Yp7majTDbj0fHIEmQ76EWlz+Qgkfs+n8gKi9VHJKTdrjjtGpCuvew1/iQ=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR05MB4591.eurprd05.prod.outlook.com (2603:10a6:802:69::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.23; Mon, 8 Jun
 2020 01:46:44 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::397e:56ce:f98:8220]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::397e:56ce:f98:8220%6]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 01:46:44 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [next-net v6] tipc: update a binding service via broadcast
Thread-Index: AQHWOw5CYZEbskJhw0Gj89pKpwHjBqjJ/RSAgAJ8+PCAAQ69AIAAbcJw
Date: Mon, 8 Jun 2020 01:46:43 +0000
Message-ID: <VI1PR05MB460528C3720FF85A1055CA1BF1850@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20200605075212.18700-1-hoang.h.le@dektech.com.au>
 <19d16ffb-f229-5e30-b392-7ecc41721576@redhat.com>
 <VI1PR05MB4605728F1F5CE529D5327784F1840@VI1PR05MB4605.eurprd05.prod.outlook.com>
 <50344054-9b8a-c57c-282b-ce69c4e3b6bd@redhat.com>
In-Reply-To: <50344054-9b8a-c57c-282b-ce69c4e3b6bd@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76fe620e-c64a-4c0c-c869-08d80b4dcc42
x-ms-traffictypediagnostic: VI1PR05MB4591:
x-microsoft-antispam-prvs: <VI1PR05MB45911E336DD746B55B93482DF1850@VI1PR05MB4591.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 042857DBB5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u32Yo0rUDCnkuy7EgZu/3YRwAMEVu85Qj67M91iq1KvYcL9ZKHzfpClwHxgxAyfx9rf9yqgC066MIzHR8KtFlkreGTz+fBSiAq3LwXLDg0fcB/8//RdR95DT3fgmoOGyaPMqH4RXkPkajyK6LvKI4CJyEZiwyUGAea6ZAaaMbNxFFqV6Doopzxu0KgBRLCcl85T/sMopdatzt9Al7p1N8m7b+bfrFTxFUWMP+NEGYl9KYIBEY0WipWj7GiYN1Aw3HvTs1hn01GBFAKNpPGDO5RImJm3oEyxIKyzODBGf6LrIetOrsoekbdYx6L/QPJ5Q4FzG7hNuUdcCGaOXmusmtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(346002)(136003)(366004)(376002)(396003)(55016002)(186003)(26005)(86362001)(15650500001)(9686003)(7696005)(2906002)(71200400001)(53546011)(6506007)(478600001)(66946007)(66556008)(66476007)(64756008)(110136005)(5660300002)(52536014)(316002)(76116006)(66446008)(33656002)(8936002)(30864003)(83380400001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: SJhAF7DYkpdUBCUY2zfwu905vhAtovoHTQwDisiJjnaHZC8IRQHMN4oszCsefFC0AuwfhWbqzUt5pz61byekcyzMOdiJbd65HTGzsdfaa5JCIUznn1iwsSuvk5RQs5jC77g++ZyycD3ttpPGrqIF/YZ+3SbkwAVBgYbzc/JW+2HJxsRjOD1ROC09iiFSs3BzzSOJ3C+oYEnW6bwrH8JZDqc/y1JcGDFSu4hg34/Pw8vPTiiLSUkfqzZPRvgt+5i3MI8RS3J8lDc1QWF6glfpSJeWHf9JBgkWCqyxWWX0uL6LqSvou0svkLxYgtOPPeTfMQXdKLUloorbW9yszi6LqShoalJxl6zIBUqu3Tu4JUymRVhbguzv5X7f31b786OBAy6awbnfzxnZ88F43d/wyur3HPiJGIzDUzEaZzCmCN//nn+vx03iPEhKoFwd12E9Gc0uoeCh2nxKGuGbyXiH97retRNyyDqVeUx8y/OTPFU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 76fe620e-c64a-4c0c-c869-08d80b4dcc42
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2020 01:46:43.8802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UecafGs2etTsxEnP/vFEquktxy7ZZkBuZGqo5XnpW+wo5UPwlv0Gbut6F/xBr0GiFwUwf9V11AdsSijaeM6vJh7tO5SJ3p3FOATNwrjHIOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4591
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.133 listed in wl.mailspike.net]
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ji6sJ-00FYYM-4z
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
Sent: Monday, June 8, 2020 2:12 AM
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
>>
[...]
> Still not needed. This queue should be flushed in
> tipc_node_lost_contact(), which I now see we don't do.
> [Hoang] Yes, that's right. I will verify and send it out.
Actually, this might explain the mysterious "Failed to withdraw" 
printouts you observed during testing earlier.
Those withdraw items might be from a previous session just lingering in 
the queue.
On the other hand, such a bug is so obvious and would have such grave 
consequences (what if there are old 'publish' items in the queue?) that 
I find it hard to believe that it can have remain unnoticed all this time.
Are you sure we are not cleaning up this queue somewhere else?

If it really is so we must also issue a correction patch to 'net' for 
this issue.
[Hoang] Yes, I checked and already do the clean stuff at v2-3 in this feature ... So, we should apply this for 'net' too.

///jon


>
> This has to e fixed too.
> ///jon
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
