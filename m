Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0C6F1ECD
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 20:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B0HcQkMkbKIKV3LQgjqvBWSN8rGyoR4GdYyYkX/yFqM=; b=Ggca5dRDIeft/3R3b0foO2rzA
	HPyAlBlWteWVk0prBogE5DE0AJqFovtk1RSRQFLNSP+kt2T6MrZNdJk9PyTs/gQuV074hmFvbnHF/
	3IiRDTmrzTPAFCk5nHQKNV8kxFb5J+7tYWJtknZV6A7w+d+3OgGCoS8mvWsjKAnVWJ3h8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSR1j-0003ek-HA; Wed, 06 Nov 2019 19:31:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iSR1j-0003ec-6P
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 19:31:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rMJTltj0Go6mxEri+1JwZDHVW126XxCYtrEwkkRs/d4=; b=feVy7wpHoGTsErUn04pSnw7N6K
 hAYGc9O6ZTCz0BYoVP/AVqXtkzNusP7xHSorV85QtuPQv2eqanfI4/zWYv6nubtpS746dyYZy7LDV
 3gPh8lWMY3EtqWD8H9vPnpTJFJDsgfAZbAoYb+BdxA+ZMra51ZGO3lM+Fz2hFTDqtWp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rMJTltj0Go6mxEri+1JwZDHVW126XxCYtrEwkkRs/d4=; b=lJmuJmVWk+0XQUBT32E07aqzzx
 17GTbf+GeVpVydv8T3FKZNUpYoGmjkZhVLGfNUjMEbdWYEmxJcZHQbDBO0QydSrPxMCSIdp/ghgcS
 JpRbgwJ50nqPVfV9jRFlSFsJxmHavDx4VHCA1YvFDIjmxAPQ8xClRt/qViSDH9ul0+0Y=;
Received: from mail-eopbgr800055.outbound.protection.outlook.com
 ([40.107.80.55] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iSR1c-002jYp-I6
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 19:31:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmZFpMg7TmwUtBiQ53cMxmrGI6uHoFm3ajfhm95f8rCh6ZRLjQMA2aecxO8VgpHECKfsFqmUoixxIkRA5Mnz8MJtFMZdXQHzCSNLHRHlvk2Bo28JuDNBs01Q9XcsCpqgVOI737WEofConA6+7HHAWYkF/vBHaKqwdQBM3AdGQnfd1dpxI/dNgRFz/XWMV/C7a8qlR8b/nKzjhMHL7cGvgTGr8aOKGBz5hW+8kIAIFyKKwIaMdowEisEAB/FuHRAyOrIqWLxFZwV3Y+9lC9pQ0sQIXpJqIcx9syyIfmOFaVlfwWW6sNgVwWhnNdc6XQUGK/QRKOKjW9lVOrViVo8r5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rMJTltj0Go6mxEri+1JwZDHVW126XxCYtrEwkkRs/d4=;
 b=OyoSlfRP7VsnWEYiQivc+Zc6lgx/cm6f82Qquq8YqohXBi0nvunXg4gDbSDalHhOGIwBW6Avsu5CeBT9qnMfQ8fphtJ8jBQSWiJFgIFiQpUwMHSevu3HexA9ZcHJthqWhHe09n8kygXj3FmFWgm747c3SalGIgPhfXNjinvlv/92KYQk+Bb9WA84tRnE+LAZ9vUhmhGg68F/1RVDSHjvvo/UOZT4W2cdq8YbosAV2HlNivbQC+/notyw0XwCh3gZIrwMYSSCQldJLqIPm3SxhALqnHRL6ZccYovx+Jf3I0Ai8ziMd6to3SrdISu4oFjL2m9GJdDadTc9L7IcjZqUfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rMJTltj0Go6mxEri+1JwZDHVW126XxCYtrEwkkRs/d4=;
 b=awOEOma/MQhLj0m6KOByqdtZvbQRm2NuvW9ynF7X9/DAqZASCmxWDWWA5cKcgOrJiie7awG7rGGlHayGkpIBpusS7Y3sbec1cgz7leeR09t7KQNpDZBr+457J1gMBo4W7JIu7qwGw65jyYupdADAWwbfB2W5qzj1dynuGomAkBk=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3576.namprd15.prod.outlook.com (52.132.229.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 6 Nov 2019 19:16:43 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 19:16:43 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next 1/2] tipc: update cluster capabilities if node deleted
Thread-Index: AQHVlGslx91tbrousEamVXVMV+qFsad+hI8g
Date: Wed, 6 Nov 2019 19:16:43 +0000
Message-ID: <CH2PR15MB3575236202A3DB62E731A1109A790@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191106062610.12039-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191106062610.12039-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98732f2c-8707-47ff-8bad-08d762eddc56
x-ms-traffictypediagnostic: CH2PR15MB3576:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB35767BB675DF58DBCE2E408C9A790@CH2PR15MB3576.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(13464003)(189003)(199004)(66946007)(2906002)(71190400001)(66476007)(5660300002)(76116006)(66556008)(64756008)(71200400001)(66446008)(14454004)(99286004)(14444005)(110136005)(256004)(52536014)(7736002)(498600001)(74316002)(446003)(26005)(305945005)(229853002)(55016002)(25786009)(2501003)(2201001)(102836004)(11346002)(6116002)(3846002)(6436002)(81166006)(7696005)(53546011)(6506007)(66066001)(81156014)(76176011)(8936002)(33656002)(15650500001)(476003)(8676002)(44832011)(486006)(186003)(9686003)(86362001)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3576;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zVkaQMWu/U7SoJ9uByV6jjdzK6N40IICRNKIDy05u5dp4W0p33otssohZbenHiQ9OVyqYLFrJOUA4Ia0PDJzk3YK7+0yNJVQ4T0VUp+z3jbihSM41All0SbiISK3QTkZR0n2anloGA0JcGpBwvKsENtfTsGYyxEStoZ7hazG3qL5pMMExFoGP4Pkb3REy8Yk7SWFRiBOuz4U/cDVY2OfK7HAos8g3pDngGOWTMcjfui4110S7tQrto1ftcwK8IAz+AJtwY+8DhqVoDOrnziYlvlmge6/AQu1666UREcQQGkIaeyKFKGYkXo+tTRGY7tPCg0Fjf4H0nyAG5TGzOrKKF/Q6Mobxqy92ZRegUPPj6tv7idg6W3C44CeCEcVvWXiBgfh6+P6eLkDOA2aR8lEVj/DpDUXbKEGtLAcadKXD2pbPsN++p0A5TgoJ3O3LKfr
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98732f2c-8707-47ff-8bad-08d762eddc56
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 19:16:43.8026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oKC/H+MEfv8eJYL+u/MV7NvTRs6wsJ/U6kAh3tYYGmuBLZCUYuwNXBdW5dlytNw5W15RS3HAyBges884NEnqtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3576
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSR1c-002jYp-I6
Subject: Re: [tipc-discussion] [net-next 1/2] tipc: update cluster
 capabilities if node deleted
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

Acked-by: Jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 6-Nov-19 01:26
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; netdev@vger.kernel.org; tipc-
> discussion@lists.sourceforge.net
> Subject: [net-next 1/2] tipc: update cluster capabilities if node deleted
> 
> There are two improvements when re-calculate cluster capabilities:
> 
> - When deleting a specific down node, need to re-calculate.
> - In tipc_node_cleanup(), do not need to re-calculate if node
> is still existing in cluster.
> 
> Acked-by: Jon Maloy <jon.maloy@ericsson.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/node.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 742c04756d72..a20fabd09e7e 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -665,6 +665,11 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
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
> @@ -2041,7 +2046,7 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
>  	struct net *net = sock_net(skb->sk);
>  	struct tipc_net *tn = net_generic(net, tipc_net_id);
>  	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
> -	struct tipc_node *peer;
> +	struct tipc_node *peer, *temp_node;
>  	u32 addr;
>  	int err;
> 
> @@ -2082,6 +2087,11 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
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
