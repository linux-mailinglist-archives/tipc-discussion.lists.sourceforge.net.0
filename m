Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 354F1FB01D
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Nov 2019 13:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ASh9SgSAOINnSttbPFIcSg8klc8XkqXdJy0T5AhYaCw=; b=Scdr+kwcHPPWzFH3L4y4Qb/Dw
	+6NngX5UiSh1CYwKcvCnHRsrsTe1hDZS5UVlm+wBnVyWvRHlbkf/pRtgGvx4gt3NiyckkbKDRTiaX
	C1TAQrIRsbK7rZiIkPvXaO3uBAl9qkXLBOfa8mWpXgXgZ+qCjdLgTOj/fB2CDx/kEhpeU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUrLp-0004K4-DX; Wed, 13 Nov 2019 12:02:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iUrLn-0004Jw-GW
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 12:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hOhn6zwfo/0PSKymmN3SINMNPxLqIevSYhojs/M0rv8=; b=J0GPhL5kvfzEugB0giwLXcJCLb
 50NUJ41Hsk2EskcutOn0L0YCk3z5lr9lIjESq3L9cyNWL1ZaEbMoYHBMGiDf0FNc0DRLswtoDcoPK
 QQQeu9YoeEil+AUJwWsJtlO/4XrDbp6+uFZncjx82clyCCdwXeIo359RiE+Im3lfLVsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hOhn6zwfo/0PSKymmN3SINMNPxLqIevSYhojs/M0rv8=; b=aLqK9/Oh7Aoe0vxpW4+9u4H2Lp
 QNvfdvuE6M6s3kVsYV2WaOYTkCqI7u9vRUiVvoFjKaU2C+LxmCjGNGvdBcI9hUDA/whTmjj3G94MK
 wirQKPY4E3I/chQ/7csxhGGdKWjkpQNuBim+lo+FFjapZq9DRg6dZU4dZ2FWwhzUXzlA=;
Received: from mail-eopbgr800089.outbound.protection.outlook.com
 ([40.107.80.89] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUrLh-00F7jP-Sk
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 12:02:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ou+ynKGRchxrKPAK+mkM+9UZKUVZlxPaN8ycFds/o7ehpgntFL44Tfj/YHCSxw5AuHWhj8MAJjHDVYazJCpmIgcoRMYHezXBtW4EIVhdVRqu3OGPYmSas3R9TAtEeqMQRyfow1nJWsszR8fsSCeftkheN7DqOaMCyza00xe1CWHHjT2KmXbFfpb+WmJtyrJwk26wIaGZX5QN+h+a+UOJhoJevazsH58ydOsvRrN6a+GXm3VESgvDytWZvP9gFSHnZtpKOXABSILzkxVo7v0mMqXGxx45Nc3Z+d1SPVCpGBXtc4NWY8t/EAevbyp3lpvW4vWpi/jtut0WUt5362FiFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hOhn6zwfo/0PSKymmN3SINMNPxLqIevSYhojs/M0rv8=;
 b=PGCSn8qMQLTZ7UFGgtgtt2TgRke5ZshT9SLWRELWGifSLTmDU4pOaNbugiRkq5fpfOKTImPfr/st/s43QBJwFbg6g6RADRhch4JqRZFo1LvUoBmUVpaHzCxSr4A+SdD6IkaqN6IqPSRaMyZbqpCVJu9uC/l2sLQZz8TwMltZ3WCQDz5qzIanaMaPnE6V+RDG0u6Hitz/nMwAB8b7Avz7jYMvi1CHbBVlB/Kxysy3/m8srGkedqZQreQ+Pju+76KBjH9WIVTNVeaPwOQtukihsiNu+lzevD/xOb76R1A5d33p76djji/zAbJoRXtyWB6CO1lcbeSzk+Q5+pmybMTaKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hOhn6zwfo/0PSKymmN3SINMNPxLqIevSYhojs/M0rv8=;
 b=qJx+7DB5d4Cy2+As8LQf2gGZ7WWgQKRXh5Lnd6NYhup+jKtgSQ71Y0xt1ZehVRMjU3bQxbHRys2Mpqf3T29rF1ZQXeUTBI7q9gLxz7iSBYbxquoe3LO2GmSUksc6Mvvpmk03FCdHZuX+9oesD5Kr8tQ8zcEbMUXbk/cvwc+LYLA=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3528.namprd15.prod.outlook.com (52.132.228.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 13 Nov 2019 12:02:03 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 12:02:03 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: update a binding service via broadcast
Thread-Index: AQHVmfT4lPJTAGBK1kC8cAMBR0q0JKeI/F+A
Date: Wed, 13 Nov 2019 12:02:03 +0000
Message-ID: <CH2PR15MB3575CFDEEA8400E6E06C994C9A760@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191113073521.9394-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191113073521.9394-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e53d8ea8-c3aa-4343-6250-08d768314bf0
x-ms-traffictypediagnostic: CH2PR15MB3528:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB352858D17D35D93F6ED9BDC69A760@CH2PR15MB3528.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(13464003)(199004)(189003)(8936002)(486006)(478600001)(81166006)(305945005)(81156014)(316002)(229853002)(2201001)(110136005)(74316002)(8676002)(14454004)(2906002)(5660300002)(3846002)(6116002)(2501003)(86362001)(52536014)(99286004)(25786009)(7736002)(15650500001)(14444005)(66556008)(7696005)(476003)(66946007)(55016002)(446003)(64756008)(11346002)(66066001)(6506007)(6436002)(26005)(33656002)(53546011)(9686003)(76176011)(71190400001)(71200400001)(186003)(102836004)(44832011)(4326008)(6246003)(76116006)(66476007)(256004)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3528;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vLCKnWioMWBG60SJMaLQoeLqCOvsm3InXxcSwCyL/h4a4PWGHeJHy+6gUKUsOI7mdw4hwWd9sfX6zj5tTiP0p4Cw4MLXWF0eCqUQCqspA4KHZdhHVBQRsNf1mTRkCC/ksMzUABy+uH+g1zY7PnbJ0Mem1IZj9++b89YTYaOr8RdZaGRimTbHQBAFvnLmj4xWb/jzvNeaTvsLgZZqHAezIO91bzNLQUe25sFhyaHDUD3MZzgl98N4V3BG616ZOlSDH5QhjV3gSOzcWHc/Xi0kiEwxL4Mvk0m44KPEMRKNxt4qFgtUlEIeutGzWEzpGTzTpwN8K3/VzU5cz0IxQ8wSJttChrO4fb7/d59GZHEe6xaN6AzKfjjCbwYhFGK3W/FXS1a6CBKn5ygnscs9Ef5vszgczvkeJny4aLTWGnCpsKR12bM5rEPINvLdtGjjiZHK
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e53d8ea8-c3aa-4343-6250-08d768314bf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 12:02:03.1816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lJgUr5hAmwnfJKj9alVyuLar7q3n3BlGijqiybOKeP6+iIMwchm1Br9pEfirv20Q4HrOjPG//1++xUnkxA/7Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3528
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iUrLh-00F7jP-Sk
Subject: Re: [tipc-discussion] [net-next] tipc: update a binding service via
 broadcast
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
This is good, but you have missed the point about the synchronization problem I have been talking about.

1) A new node comes up
2) The "bulk" binding table update is sent, as a series of packets over the new unicast link. This may take some time.
3) The owner of one of the bindings in the bulk (on this node) does unbind.
4) This is sent as broadcast withdraw to all nodes, and arrives before the last packets of the unicast bulk to the newly connected node.
5) Since there is no corresponding publication in the peer node's binding table yet, the withdraw is ignored.
6) The last bulk unicasts arrive at the new peer, and the now invalid publication is added to its binding table.
7) This publication will stay there forever.

We need to find a way to synchronize so that we know that all the bulk publications are in place in the binding table before any broadcast publications/withdraws can be accepted.
Obviously, we could create a backlog queue in the name table, but I hope we can find a simpler and neater solution.

Regards
///jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 13-Nov-19 02:35
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
> Subject: [net-next] tipc: update a binding service via broadcast
> 
> Currently, updating binding table (add service binding to
> name table/withdraw a service binding) is being sent over replicast.
> However, if we are scaling up clusters to > 100 nodes/containers this
> method is less affection because of looping through nodes in a cluster one
> by one.
> 
> It is worth to use broadcast to update a binding service. Then binding
> table updates in all nodes for one shot.
> 
> The mechanism is backward compatible because of sending side changing.
> 
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/bcast.c      | 13 +++++++++++++
>  net/tipc/bcast.h      |  2 ++
>  net/tipc/name_table.c |  4 ++--
>  3 files changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index f41096a759fa..18431fa897ab 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -843,3 +843,16 @@ void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
>  		__skb_queue_tail(inputq, _skb);
>  	}
>  }
> +
> +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb)
> +{
> +	struct sk_buff_head xmitq;
> +	u16 cong_link_cnt;
> +	int rc = 0;
> +
> +	__skb_queue_head_init(&xmitq);
> +	__skb_queue_tail(&xmitq, skb);
> +	rc = tipc_bcast_xmit(net, &xmitq, &cong_link_cnt);
> +	__skb_queue_purge(&xmitq);
> +	return rc;
> +}
> diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
> index dadad953e2be..a100da3800fc 100644
> --- a/net/tipc/bcast.h
> +++ b/net/tipc/bcast.h
> @@ -101,6 +101,8 @@ int tipc_bclink_reset_stats(struct net *net);
>  u32 tipc_bcast_get_broadcast_mode(struct net *net);
>  u32 tipc_bcast_get_broadcast_ratio(struct net *net);
> 
> +int tipc_bcast_named_publish(struct net *net, struct sk_buff *skb);
> +
>  void tipc_mcast_filter_msg(struct net *net, struct sk_buff_head *defq,
>  			   struct sk_buff_head *inputq);
> 
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 66a65c2cdb23..9e9c61f7c999 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -633,7 +633,7 @@ struct publication *tipc_nametbl_publish(struct net *net, u32 type, u32 lower,
>  	spin_unlock_bh(&tn->nametbl_lock);
> 
>  	if (skb)
> -		tipc_node_broadcast(net, skb);
> +		tipc_bcast_named_publish(net, skb);
>  	return p;
>  }
> 
> @@ -664,7 +664,7 @@ int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower,
>  	spin_unlock_bh(&tn->nametbl_lock);
> 
>  	if (skb) {
> -		tipc_node_broadcast(net, skb);
> +		tipc_bcast_named_publish(net, skb);
>  		return 1;
>  	}
>  	return 0;
> --
> 2.20.1


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
