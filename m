Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9E9EFE51
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 14:26:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dZzL7pgG0oPIjg1Uzx4UgL1EMIlmGlcwqoXHfJHvJmk=; b=Eca11xN0NPIeiTyH7ePOH3pO/
	NXjZZK9WlNV1tukqkspUWrMKNNXFn+LbNspFUzS2pYaBYRl3IH3U0x4NG2q4Zb86/pNnGnOQgf8c0
	PhsjdCzNpRHa8KhpszL6qbb6DsKir12u26/963xxcZ+KSFlYYC3pFefzaGg6b2KBTL1jM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRyqR-000762-SD; Tue, 05 Nov 2019 13:26:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iRyqQ-00075v-A9
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 13:26:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+FYmzHm43MB6YDjSyzKKzyR+MtJT9Ss35x0AohZAkGA=; b=cFkrlFIkaoge75PFVKxXmRDe+S
 Uzp2FkB2xbd7utu00NdMwTfAoRU10pimtslVzUmEQyvJUjom356ZXIeYzD5SdqITfE5Zg+ut6DVs6
 PfaL4LhQAANqdO6rtKwWDABKZl6H/SCR3Amr1tsrnlo0yz7b8BfCwCzu3FVZFON709rM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+FYmzHm43MB6YDjSyzKKzyR+MtJT9Ss35x0AohZAkGA=; b=lPBCMz7O15H9XDgd7O5XYAvJyp
 SiSJ/5/uXonUhvRF1J/2Jhns+QBpLdNI4yUrSXZ7HjB9ubr8vqPNmHc/nvDZ7V29eG1OcFqgSGdaQ
 RmFoY+mWUikjeq2HOqURIrcQGDbX4+II5PvViu7l32fwbVBvIzJRUCh3hSzbXE2i5kpg=;
Received: from mail-eopbgr680052.outbound.protection.outlook.com
 ([40.107.68.52] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRyqK-001Fgh-3I
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 13:26:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AbYkYd3femyibPSiygiIyE3nbVeo7oNlYZgpcFMvaCdXdpX2Y6s+Uagdt88CJfttQN+wqP8LLEz766Cb3T6M5toVvDG7gMXJ4B3pQaA5Rzr9Nq+0WPYAe85kRqklm0SbtqxYPjH/IUMJ/JPbvOf3lXcfanmreTRMBno1quDapMRxHeg8dG+zWQmK6mMkMgylNpdqtrTPCwjBEUAifoqWk3sR88/pWkbibbpxlnP1RV7N505TUMKPFhdAM9GuU9QlB87DKW/31bEzbD6xsA2O7WCQovDacv2Ruy+pXh22GWFffh8Micbn76E6LzgHnRk2rsQEUoSiZgscPHAAM3Jjgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+FYmzHm43MB6YDjSyzKKzyR+MtJT9Ss35x0AohZAkGA=;
 b=E2bR8SeyhYZEoyEB4AozA5YIWmEkNdGlzFm0wC4GKB4xcfRmhuLlrBEzesa1JomlwDqYPf6hUQVZml6wcJLO/b13RTYJcy/1EdnZMh0YW9+Uj9eWZlT8iJqSWi7pslXqli+b9hdVlUXRMpHsd3TZsR+7LYKzH5PHJCFUyRgUVSSNsDG/QSkUkoTVBIcOoFQn1U6sHPJHoEUfsrmhZvC7kK0S1ADGlWniUjbNpzmO+YeGInRG4VqPVtTlYoC6EDVwebkIy6efkuOWuhUy+jblzuf/8s6VCVepZXAP8amB40d8bfXJgl1D9rKDqyPiDu00j3l6sdD8AyK1pBpRmg/Sdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+FYmzHm43MB6YDjSyzKKzyR+MtJT9Ss35x0AohZAkGA=;
 b=SWzf+6sEYN1YG1s40Y5hKAKNZ4gZgUJMNwAPgzFMvApY8sWa1lvG/gJsszbWuPSJ9czZNnGSsXowbP07W3LrX+KnnzZACItXP19wN2rzDoahh1kWBgZSTtB+xObW1IBDBEqFen4vRAwdydWYvx4TAzxLo1btKu4/WRy9WoiiAvY=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3639.namprd15.prod.outlook.com (10.255.155.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 13:10:31 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 13:10:31 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>
Thread-Topic: [net-next] tipc: update cluster capabilities if node deleted
Thread-Index: AQHVjwXow6XV5paOL0WjaLc1ATXFU6d8lrGQ
Date: Tue, 5 Nov 2019 13:10:31 +0000
Message-ID: <CH2PR15MB3575353041170D35BBFF21909A7E0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191030093739.19741-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191030093739.19741-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c947d62-81e2-48ed-62f6-08d761f1894f
x-ms-traffictypediagnostic: CH2PR15MB3639:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3639A7E8EFF15863AB01335B9A7E0@CH2PR15MB3639.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(376002)(346002)(136003)(39860400002)(366004)(396003)(199004)(189003)(13464003)(81156014)(81166006)(9686003)(33656002)(446003)(99286004)(11346002)(486006)(14454004)(25786009)(186003)(74316002)(76176011)(316002)(7696005)(305945005)(102836004)(6506007)(53546011)(476003)(44832011)(26005)(8936002)(8676002)(7736002)(3846002)(229853002)(5660300002)(52536014)(71200400001)(71190400001)(86362001)(6116002)(110136005)(2201001)(256004)(14444005)(478600001)(6436002)(2906002)(66066001)(55016002)(15650500001)(2501003)(64756008)(6246003)(66946007)(76116006)(66476007)(66446008)(66556008)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3639;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yofCTUZ7EXYAdfZQpHYB0yWWPL3ZOhblXw7YXD6wyplDBMChOT3ctCUmQvjmTa+o8dL7eU6tMKFQcQ4ffTN4SK4z+y6+/15V4jEEANYeKJ7uwcAPhfm0A8EuGvEPm3a4mj3OnzriCPkcfKRQ0Msc5m03AsqZcXlsHJhgMq1c9YG7n7uXOVGkwfOM5kr1SA6aCq5zruh39EVx2tpGdkFFOSHsCGL6Vj7foTXZBhrKiXJVXqUmyQ7OiWfHpBX+fKOfYTtL/BHsm8hyFVy1tFBZ21eaDlvlzJllLCzgHvKc8BIf7jgey0YSdYvcSTPKQe9cqZwLl3NomJ0PvgVpUX+wAHxUEZUNcq16oIHnQYiv430WihlRlUgzYgWdQYuuh5DIjlNMKefY2Dt5U0Xx0zQUQbG2/JdL5yrphiPeoNODrdPALNkZOYhTdeUorg/Jwn8w
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c947d62-81e2-48ed-62f6-08d761f1894f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 13:10:31.2519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OjrfBL9gxDTeTyJNZoLbonAdg65VKzCK89Smz6Y+wnWZV+JM8CTrx+VAUCwvij3aKfNBNiWUoRSc4BmLPo/rwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3639
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iRyqK-001Fgh-3I
Subject: Re: [tipc-discussion] [net-next] tipc: update cluster capabilities
 if node deleted
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

Acked,
///jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 30-Oct-19 05:38
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net;
> ying.xue@windriver.com
> Subject: [net-next] tipc: update cluster capabilities if node deleted
> 
> There are two improvements when re-calculate cluster capabilities:
> 
> - When deleting a specific down node, need to re-calculate.
> - In tipc_node_cleanup(), do not need to re-calculate if node
> is still existing in cluster.
> 
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/node.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 4b60928049ea..1f1584518221 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -667,6 +667,11 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
>  	}
>  	tipc_node_write_unlock(peer);
> 
> +	if (!deleted) {
> +		spin_unlock_bh(&tn->node_list_lock);
> +		return deleted;
> +	}
> +
>  	/* Calculate cluster capabilities */
>  	tn->capabilities = TIPC_NODE_CAPABILITIES;
>  	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
> @@ -2043,7 +2048,7 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
>  	struct net *net = sock_net(skb->sk);
>  	struct tipc_net *tn = net_generic(net, tipc_net_id);
>  	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
> -	struct tipc_node *peer;
> +	struct tipc_node *peer, *temp_node;
>  	u32 addr;
>  	int err;
> 
> @@ -2084,6 +2089,11 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
>  	tipc_node_write_unlock(peer);
>  	tipc_node_delete(peer);
> 
> +	/* Calculate cluster capabilities */
> +	tn->capabilities = TIPC_NODE_CAPABILITIES;
> +	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
> +		tn->capabilities &= temp_node->capabilities;
> +	}
>  	err = 0;
>  err_out:
>  	tipc_node_put(peer);
> --
> 2.20.1


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
