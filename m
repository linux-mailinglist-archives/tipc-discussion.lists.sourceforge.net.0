Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2D71041B1
	for <lists+tipc-discussion@lfdr.de>; Wed, 20 Nov 2019 18:03:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L7KSSGAK72bapfHDQycFp/EkczAR/PhIgtInGlJsNNw=; b=hyp8B5l1i+9Gf3bFqbaG4qq3Y
	+vQDoJvEG21zJJQu9BfwifzLnh987DWkMi4v833b+Clq1sid20lQ+LVJxDPch6U04npBcWdXIcsPX
	b60y321r6/3Z9lsn97b12bXTCGDQ5iHodMLfkyWknfmMexTfysMWGY8d9jqayBSy6aokg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXTOF-0004t6-2A; Wed, 20 Nov 2019 17:03:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iXTOD-0004ss-Cv
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 17:03:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0oUTjoxYmoh67qpxVVg+9gxYChbd3kAVecTesMcKW9U=; b=eXT4X3rJlm0iZWZekhDTuFe+FK
 oflQvsWz3fpdWwLhpK0qttUwObD9rttUW2tB9VOnKMQJU2S0Xt5JTBeKFsKBlBsy9lycFiKknE73V
 ea24d81mT8skEyenMbYJWAu1yPIC8c/EHSgt9SLxzFVAxhY0Z6ro+6Ez7Mh1wQHEM1F4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0oUTjoxYmoh67qpxVVg+9gxYChbd3kAVecTesMcKW9U=; b=BkCnVOT1X2MUFxGZLqFFaA2qT9
 6zIo5ZOv0EZQydkLpEKCnjslI0dSXr64pGCaiQskLwXOEcO1B4zcbBF+KXAfp37mYATls9IRY8LN5
 DoUM2rGvbfKiMLrrJxUSMRepzxvaWCNLuNLpSUIoHW7HyX9piN6dyewJgX9510gUupXg=;
Received: from mail-eopbgr720059.outbound.protection.outlook.com
 ([40.107.72.59] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXTO7-00EJr4-3J
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 17:03:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csUkwIym2uitNwKiQFJRwybqyvub4/drBVyQOykE5/VcUY8TtQuOYecwOiqINkCaHZcbkDrtNkiotaumptOKe/twhc7eM4I9d/Jn4lUBLitgsyRHIJlRZWt7helXJgld2RPPl2Ry0rIlh4uFna0dTbQdKws8S3KTPKv8f120GDcf6bDA+4rCAvb4sl0BTj+cpnpfbF4QqfcRrV0TPoQYnVQzyBijISGhN65GLjaFhBBrPNJU3QssKjZ05/OT5CRzJbb/9ggxZ0WEqxbWjvb8ULdDhN/5z2Ky46o4VTGUOfwIvsGpsNTFg4XcSItVisM8cFIIw/IjSkPlgip8fUwqNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0oUTjoxYmoh67qpxVVg+9gxYChbd3kAVecTesMcKW9U=;
 b=PFCcO2MII+R8BcxeQNVmRAepSVVxEt68REBLs8ofS4eWxBxHplxRXXf89OmckAmypPRoeZXRLJF74Hz58GHISRQ903R4N1aXIAcyvrWO77j74eXoxdr/Lg/ZhFrBtXBvHkTT2nqIGLvO50CqwFYQZuGRnA5KdO1V8tEc0vbqD/+ZeGBnSSxFrNkVW0skz6pS79Sd99mWo3uIL6DZkqGscExFde8LnqxMEWbOTLd6dS9wyujqnEtHXXbjNE5WnCb8kVoPtBGYGiVYahCMe88Vzw4DCC4Bc4Ik8Uhij2HeLwAFSFyPFE6600snrRzffzCud/dGurpbyQeqnz2jO3ddEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0oUTjoxYmoh67qpxVVg+9gxYChbd3kAVecTesMcKW9U=;
 b=aNEtAeCw57EcrWc6dHpunda/aiyeWfLj6FrOUfW6/FEK1O52xjPTv5ow6wqiVoZ0Eb9hYT0pbEOfmxGsmLnHjkF9y8ZvsI7GyPXAhVHu1YjcTnkx+jc2LIlD5mDERAO7b8WiBp6xCLPG2+pJZZDZ09fyb4S35vOg/mckavVphYU=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3528.namprd15.prod.outlook.com (52.132.228.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.30; Wed, 20 Nov 2019 16:49:05 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.031; Wed, 20 Nov 2019
 16:49:05 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>
Thread-Topic: [net-next] tipc: update replicast capability for broadcast send
 link
Thread-Index: AQHVn34FdNScn0s5vEq3BVRUskUAc6eURbRw
Date: Wed, 20 Nov 2019 16:49:04 +0000
Message-ID: <CH2PR15MB357510F1AFE2B69A06CBBD4E9A4F0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191120083858.4908-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191120083858.4908-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b891b8fa-28d0-431f-4f78-08d76dd98dcd
x-ms-traffictypediagnostic: CH2PR15MB3528:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB352830501888E0511AB3D2E89A4F0@CH2PR15MB3528.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(13464003)(189003)(199004)(15650500001)(2501003)(71190400001)(33656002)(66476007)(11346002)(66946007)(66556008)(64756008)(86362001)(110136005)(53546011)(81156014)(305945005)(99286004)(66446008)(52536014)(76116006)(7736002)(6116002)(3846002)(5660300002)(229853002)(74316002)(9686003)(6506007)(14454004)(66066001)(6246003)(71200400001)(6436002)(55016002)(2906002)(478600001)(102836004)(8676002)(7696005)(2201001)(76176011)(81166006)(8936002)(446003)(256004)(316002)(26005)(14444005)(25786009)(44832011)(476003)(486006)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3528;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8754C52/8bZPZMOYlRLUGdpxavwYy4756+muhjYQdjABOe/aXVE+bxYyFciQB+r1ATDXcf1i1XE0Fdt2xAeZIfqDH92CM1sBJ+GV578ftKXBxfTeqXuBB/ShDctE7HMR8K/06srWbDlDYPXP0+Q7kWunNFRCRurTxSFMH46K0j4/yrVUgMHOvndsHW/nfoLtt5AQAg5QKtSZPYV9aTL7AedwC4LVbJXbdZj6Q917ag147JAZEEWuIyfpEpxBC7NLPiJWJ+D7Th8+Rol5FkZYK9UxEYoEL4O4mNzxok8JWlaJGxXt/C/xgY5AXU3koH1L8DMlPWT3/ns1Sv87OwNxkPTMdMa4ONMd6zz8XvOblrIQ3ZIU8aTVODhPUu0XUDiA49KGcZlGbtGmXrlfBrngn35LsUJbPD5AYunqLyyRkfDhoQ+OMXBye92UUAx993+E
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b891b8fa-28d0-431f-4f78-08d76dd98dcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 16:49:04.8759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DwKdRAutF8/fwWtYZsB/yfQtOqD+24u8VIShgwpuORY9GHVXV+SPk7fh7MxDfpoI9BS5ak0BlpxPE/LuafBh+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3528
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iXTO7-00EJr4-3J
Subject: Re: [tipc-discussion] [net-next] tipc: update replicast capability
 for broadcast send link
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

Acked-by: Jon Maloy <jon.maloy@ericsson.com>

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 20-Nov-19 03:39
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net;
> ying.xue@windriver.com
> Subject: [net-next] tipc: update replicast capability for broadcast send link
> 
> When setting up a cluster with non-replicast/replicast capability
> supported. This capability will be disabled for broadcast send link
> in order to be backwards compatible.
> 
> However, when these non-support nodes left and be removed out the cluster.
> We don't update this capability on broadcast send link. Then, some of
> features that based on this capability will also disabling as unexpected.
> 
> In this commit, we make sure the broadcast send link capabilities will
> be re-calculated as soon as a node removed/rejoined a cluster.
> 
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/bcast.c | 4 ++--
>  net/tipc/bcast.h | 2 +-
>  net/tipc/link.c  | 2 +-
>  net/tipc/node.c  | 8 +++++++-
>  4 files changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 44ed481fec47..3d14e60ef642 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -87,9 +87,9 @@ int tipc_bcast_get_mtu(struct net *net)
>  	return tipc_link_mss(tipc_bc_sndlink(net));
>  }
> 
> -void tipc_bcast_disable_rcast(struct net *net)
> +void tipc_bcast_toggle_rcast(struct net *net, bool supp)
>  {
> -	tipc_bc_base(net)->rcast_support = false;
> +	tipc_bc_base(net)->rcast_support = supp;
>  }
> 
>  static void tipc_bcbase_calc_bc_threshold(struct net *net)
> diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
> index dadad953e2be..9e847d9617d3 100644
> --- a/net/tipc/bcast.h
> +++ b/net/tipc/bcast.h
> @@ -85,7 +85,7 @@ void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_bcl);
>  void tipc_bcast_inc_bearer_dst_cnt(struct net *net, int bearer_id);
>  void tipc_bcast_dec_bearer_dst_cnt(struct net *net, int bearer_id);
>  int  tipc_bcast_get_mtu(struct net *net);
> -void tipc_bcast_disable_rcast(struct net *net);
> +void tipc_bcast_toggle_rcast(struct net *net, bool supp);
>  int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
>  		    struct tipc_mc_method *method, struct tipc_nlist *dests,
>  		    u16 *cong_link_cnt);
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index a2e9a64d5a0f..5153b9bb7b3f 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -550,7 +550,7 @@ bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
> 
>  	/* Disable replicast if even a single peer doesn't support it */
>  	if (link_is_bc_rcvlink(l) && !(peer_caps & TIPC_BCAST_RCAST))
> -		tipc_bcast_disable_rcast(net);
> +		tipc_bcast_toggle_rcast(net, false);
> 
>  	return true;
>  }
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index b058647fa78b..b9f6b5dfdb5b 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -496,6 +496,9 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>  			tn->capabilities &= temp_node->capabilities;
>  		}
> 
> +		tipc_bcast_toggle_rcast(net,
> +					(tn->capabilities & TIPC_BCAST_RCAST));
> +
>  		goto exit;
>  	}
>  	n = kzalloc(sizeof(*n), GFP_ATOMIC);
> @@ -557,6 +560,7 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>  	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
>  		tn->capabilities &= temp_node->capabilities;
>  	}
> +	tipc_bcast_toggle_rcast(net, (tn->capabilities & TIPC_BCAST_RCAST));
>  	trace_tipc_node_create(n, true, " ");
>  exit:
>  	spin_unlock_bh(&tn->node_list_lock);
> @@ -740,7 +744,8 @@ static bool tipc_node_cleanup(struct tipc_node *peer)
>  	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
>  		tn->capabilities &= temp_node->capabilities;
>  	}
> -
> +	tipc_bcast_toggle_rcast(peer->net,
> +				(tn->capabilities & TIPC_BCAST_RCAST));
>  	spin_unlock_bh(&tn->node_list_lock);
>  	return deleted;
>  }
> @@ -2198,6 +2203,7 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
>  	list_for_each_entry_rcu(temp_node, &tn->node_list, list) {
>  		tn->capabilities &= temp_node->capabilities;
>  	}
> +	tipc_bcast_toggle_rcast(net, (tn->capabilities & TIPC_BCAST_RCAST));
>  	err = 0;
>  err_out:
>  	tipc_node_put(peer);
> --
> 2.20.1


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
