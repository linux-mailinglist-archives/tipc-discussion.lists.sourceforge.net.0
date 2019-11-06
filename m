Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CE8F2185
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 23:19:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=50c1f7z9ltJ9PmtBNE3Rl3K98m8DWaz4qOtvQXh9Ncc=; b=SmZUgF7ImKcHScDOox8eV8DMZ
	dOdrw+MoK6VanNcp+EAbIbuKfqiIOLcuEv1w5zqDoXQdpu/q/WYz/HyKt9ElPHUp2SHSgEeDv6xr5
	DCiGKp4BQMUMdxYDMGfNvYDmjUDfhKbAeFJNAhLBofcK6IrhzL8cnmj3EhXQK7S86ksAw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSTe1-0002cD-0R; Wed, 06 Nov 2019 22:19:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iSTdz-0002bz-My
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 22:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4xGQWMYuH4Eo8uK2tTXPa9PNYH9TeFCipk+q4R84kWQ=; b=gNTn3aO45hNJ4xyucBZ4YY9xuD
 SZQCjIpvO0/X9ZkIW+YM9vQXF4C0EenD5PYEtj/iDnNlh0dHvE9vBXKfz+/UurTgkFz8R1jK4BFkN
 Zr+NUIBFkZVsF1eljCoSyvpKNObfb4RCMeBQRsij2WzWgluhzydbIy0Jo5NnLmxR0UDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4xGQWMYuH4Eo8uK2tTXPa9PNYH9TeFCipk+q4R84kWQ=; b=ZWlsA69GX/10Ep5FhDV7KxaNVA
 cCnI1FknQqQ0MNR7Anuc/lCyeGs5jTX3WkwBO/EV1deoguN07YOFBfMlVjpax0BsMIzQR12MtS27I
 DUDDCLebpnY7furmTTZJydA2RHdhOsclSJc/2Cz94GUNNYnqeo2WyqS795e5IfLQ++pc=;
Received: from mail-eopbgr720050.outbound.protection.outlook.com
 ([40.107.72.50] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iSTdr-003lEO-As
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 22:19:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IaX+WPnHEhpdmoqF7EahYzTIL8KN3zxcQG4zJcQBtLPEkzgI5FBLZDbIz80M10rPOP5gFq4ggQxVjuNQCIoY+ZBZd8hXl2wqi1U4goEDFilp5q+04lLhD2x/R7jHiXURkYy2kMEdvoK59MQWW7rUnKgWew6kdxSDmt2vu2g08o99sL5JUVOXehkFhMvqr6KvpwFC0MkZgCmtebpAtRYQk2sx3J6Lyyx6eV9qoXDXeTee3sIVucrdUBkhBvSQF814m6b0q2GI99CXPbN5CJUqk8pokfRYxA/pJKTR1SxqG8J6/F6SagfFfrAnzUollMPbfBrEd2lwDL9rTY9EgYfFjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4xGQWMYuH4Eo8uK2tTXPa9PNYH9TeFCipk+q4R84kWQ=;
 b=nECTElL/5d6azxxZuB7jyva8UnbDCJ4hCT7hLKIjg4qOZoTIXYG0jDb3VLCb7XzlIYPCrhFEoYWNSmc7d8NKCPV+Jh01krVGJFPBiC0OU2b+k749knfi6Ch1kGaAoJiQCd2NW5R2DLGQpLLkTV8JNNtaXo1QBt6YYlc3oB7sQqp5x7JtlOoQtj/mKCebtAakcNg/Otb4rGSw2fQvHNCgbLMozmvqoL58XtUaGrJKLHkdDnsueb92sxZ5I6iVng/KBbwIxad24MNLnIWfqaBxEWjoc5nOOoUH3CCyCBMWTb1O1C4jC5wei7Xq7xh7lIN0Siezlk5+q+haGUGZmfxKaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4xGQWMYuH4Eo8uK2tTXPa9PNYH9TeFCipk+q4R84kWQ=;
 b=JhkJMSC/ZFLMgGWAfgMhqrS7R6yX2K0blNdKzgaxOueg9GJ7Lj43mU+hDsIS0ZbR6J0K7Eid/87Gc0ewPI0Ql9iITcH1g2BQX2xc0lkHIpGXTnJQkqiGNqIeN9EYkBij9iWp6z+o2/lZCNDjk2+pH/iH13pkRSuceqfuWbSH1zk=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3653.namprd15.prod.outlook.com (52.132.228.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 20:44:19 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 20:44:19 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
Thread-Topic: [net-next] tipc: eliminate checking netns if node acknowledge
Thread-Index: AQHVlF+B56gina+4MUW3ttjsXioSO6d+hMgg
Date: Wed, 6 Nov 2019 20:44:18 +0000
Message-ID: <CH2PR15MB3575ED4F5C2D6192F55F2B9B9A790@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191106050259.10628-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191106050259.10628-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 820a94da-39a2-4270-5bf5-08d762fa18a4
x-ms-traffictypediagnostic: CH2PR15MB3653:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB365334C7BF8626C9FF499FC99A790@CH2PR15MB3653.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(136003)(346002)(396003)(199004)(189003)(13464003)(66446008)(66946007)(25786009)(64756008)(8936002)(76116006)(66476007)(66556008)(7736002)(305945005)(478600001)(71190400001)(446003)(71200400001)(74316002)(9686003)(229853002)(55016002)(2906002)(5660300002)(14454004)(44832011)(316002)(81166006)(486006)(6116002)(86362001)(11346002)(256004)(3846002)(76176011)(8676002)(476003)(7696005)(66066001)(99286004)(52536014)(6436002)(26005)(186003)(2501003)(33656002)(6246003)(81156014)(110136005)(102836004)(53546011)(6506007)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3653;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W/NLWfwBPKVysYkSZx/Kb8ju9f4v7nXhPtZYehLMmB8M3oD7130BAE3kSVnTwB9rU2vMnDTNcNEQOytvhTA1aDm9wBo6VqtHune/WHJSaUai6J/qp2yr0VUGUrkv3BAr6gmLjZojj1a95Yk1UmvZ1xl8ZaYK5DcErj1M6rpRFlBdBekyLt0Yl06C4XsYdgixq1O6KCEg6yMLxA2JTlIkUXa7w5IqhcbwlEBFq/vrTn6vDieLQZcKfMW9Vvr0voRzTshTSfVHm3SzegPwidA4QJ/HUCknd1M2g88iZikqB9JOA1ITLQG/P37DKliXAoSJbD6wseRC2Bi0q+e9ldOeSTJXpg1jhL04LS4I8uf04ACwdnHaNryeeb6dd4dBgLIhgqXd4ak6vQplAfqmBFT7Cu6L822Jo6FBdU3KUb3/e4IXiyBysuYCJl2UVXRfdarj
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 820a94da-39a2-4270-5bf5-08d762fa18a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 20:44:18.9526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zac0MqQhPGqhtijj4jh7dYP7tyK6ZC/FRsEEWAzbr345OBmBrwMQaCVbjxhOh6bULebPjzRzQkTbXdBo0XUjhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3653
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSTdr-003lEO-As
Subject: Re: [tipc-discussion] [net-next] tipc: eliminate checking netns if
 node acknowledge
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
I have a hard time to understand this change. Can you please explain it a little better?
See more comments below.

BR
///jon


> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 6-Nov-19 00:03
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com
> Subject: [net-next] tipc: eliminate checking netns if node acknowledge
> 
> At current we do check netns local for every neighbor discovery that
> is being sent from external netns node. This is become unnecessary
> for node acknowledge.
> 
> We now improve above checking for peer node come back and discovery
> message sent from unacknowledge node.
> 
> Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/node.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 4b60928049ea..742c04756d72 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -472,10 +472,8 @@ static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
>  				 tipc_bc_sndlink(net),
>  				 &n->bc_entry.link)) {
>  		pr_warn("Broadcast rcv link creation failed, no memory\n");
> -		if (n->peer_net) {
> -			n->peer_net = NULL;
> -			n->peer_hash_mix = 0;
> -		}
> +		n->peer_net = NULL;
> +		n->peer_hash_mix = 0;

This looks pretty unnecessary if the node object anyway is freed on the next code line.

>  		kfree(n);
>  		n = NULL;
>  		goto exit;
> @@ -1068,6 +1066,9 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>  	if (sign_match && addr_match && link_up) {
>  		/* All is fine. Do nothing. */
>  		reset = false;
> +		/* Peer node is not a container/netns local */
> +		if (!n->peer_hash_mix)
> +			n->peer_hash_mix = hash_mixes;

I don't understand why you are doing this. 
If we already have established that the node is non-local, and it is still up and everything matches, why do we need to set this?

Regards
///jon

>  	} else if (sign_match && addr_match && !link_up) {
>  		/* Respond. The link will come up in due time */
>  		*respond = true;
> @@ -1393,11 +1394,8 @@ static void node_lost_contact(struct tipc_node *n,
> 
>  	/* Notify publications from this node */
>  	n->action_flags |= TIPC_NOTIFY_NODE_DOWN;
> -
> -	if (n->peer_net) {
> -		n->peer_net = NULL;
> -		n->peer_hash_mix = 0;
> -	}
> +	n->peer_net = NULL;
> +	n->peer_hash_mix = 0;
>  	/* Notify sockets connected to node */
>  	list_for_each_entry_safe(conn, safe, conns, list) {
>  		skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE, TIPC_CONN_MSG,
> --
> 2.20.1


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
