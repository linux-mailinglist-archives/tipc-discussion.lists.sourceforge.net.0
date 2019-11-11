Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC049F7657
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 Nov 2019 15:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DFpAFFRbOYNITGRq+0NTPH3ZGrbfn/MYZc/tTksvYAM=; b=Z+RvhmLpa34f0nLPtsD/TGuN0
	pBvbPYS2Q8OXc5YYlDP2YtiVl2mTH7jMLkbsVGKN8xwPcIC2nKE2wFs49a58KLt8DUT6nZuQ6bSNF
	PnwU3+9914chljG273XcEDQgulFjpcsUaTa2EKu9eWRv26HTfn6DLlD6EO3HdHZNk9Wxo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUAeE-0003kE-7T; Mon, 11 Nov 2019 14:26:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iUAeD-0003jw-9A
 for tipc-discussion@lists.sourceforge.net; Mon, 11 Nov 2019 14:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sfNWV4M3CnWgiNzB+jsESpBQ2uFBqZa3mmwsLp9aDCs=; b=ALzPKUu78ZyY9vk4/iNSuSitR1
 KbEepvnCBJTnCnqEhiY73yH3vuvG2aH8szH/WjFOIz1EXw50M39aUUGkA/GbwxUHvxznW3Jl1aNsl
 7pYcLkY00J20DJfbiqGPyTXciiRX9AlZS3JmMfGWeSSrbZ1ZAiGWbwxBrh1zvLxqV8mY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sfNWV4M3CnWgiNzB+jsESpBQ2uFBqZa3mmwsLp9aDCs=; b=h1wTjdQ5ka0p6GaImenO/tYVYy
 nWBPIwurvlLBFgp9Anr30YuK7GBk5FXh1dGxfhgfWNpG5HLo8MIAhXvnRve+cd6ugKrNN35qCwM2F
 soXuTZcF8yMRsfpwM4+WUwoUTnvho38zKrNBOwQ4t+XZEThujvQ2h8T32WsKuLS38ZR0=;
Received: from mail-eopbgr720077.outbound.protection.outlook.com
 ([40.107.72.77] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iUAe4-00C8oS-0C
 for tipc-discussion@lists.sourceforge.net; Mon, 11 Nov 2019 14:26:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHk6NHzLmK97mJk/FipuqYcuCxKLLA9txOuNy0hc9SWN99hgTnl69SlB8JE/lakiNUM6J04vlV5Vt4uVl7hK2E08wtxx5X9YRAo92ZBD0SV71Z7+apRUld9NoFDnQCUfFuO6P42fmjlplovWhPxfymfSy+GhQXZEirIXprDcVEHM7eh4IP/p59hsTIna/LnzXnsSfRUJi+GA3zf0EVIJH4rRZfXFzhMAHRW+zunAfTLKDmU7FBZfzywtnY50fTOjaGOb2Xbr4P+/LoSyjLyd6XbBVvEYKWmcc9paq3i2aoO+SbJ4kP4skv2NGsfyQhcNof+L9eBOFvJdEP+wTcDGew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sfNWV4M3CnWgiNzB+jsESpBQ2uFBqZa3mmwsLp9aDCs=;
 b=D3w1kK000thlWgS5Bp3+WRRzCzQFqUCS8iXv5r2QO3TB/oPTPkI0kU/L7zWpTIlOAVIc11USy7lica4HXn6llZwJfYq3alG2h6p5+ePb8WppZmXCKlYVXAiMYQN3+67+yBujueV674ena1C4bxrOV7gr7WPqOmE6Wf05Ic4vn8dogOmohJ9HDeuJ78DlZm1wo2J+W82rODO3wrkWlIhCDVuTBWrUMEl25Qj9wKG5yJ/E8m8nCbDOS5u4WXo8FP/fgdp35IM/cu+Y12wgybgd/8jExyBX/9gDpeFiq4M3FZL9p3pwdKSKP7foEaltxq2iV0dN2uBPFb7aDxcK2dtSEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sfNWV4M3CnWgiNzB+jsESpBQ2uFBqZa3mmwsLp9aDCs=;
 b=YiPL/hPt/oxwt2/L+Cy+wKYzgjQaKIQkH5mvHli6qq+s1KDNCOcvI1YwZ3gG+tKS1Zvw/Tt2FNZkdErJnB67o6GUaanKLJYfJls/BuCAOyyLIQfAoFTuqqp2H6Kn00Xg+S8HMvD1yc/1QYwft97h57ftiP7WSeOToTEZnf++m7w=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3607.namprd15.prod.outlook.com (52.132.229.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Mon, 11 Nov 2019 14:10:25 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 14:10:25 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: update mon's self addr when node addr generated
Thread-Index: AQHVmHHCqh+cySAA30minwdJ4mnAv6eGApZw
Date: Mon, 11 Nov 2019 14:10:24 +0000
Message-ID: <CH2PR15MB35757313CF95F91EDCBE8D7D9A740@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191111092340.7591-1-hoang.h.le@dektech.com.au>
In-Reply-To: <20191111092340.7591-1-hoang.h.le@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1437cba-5292-4988-0ed1-08d766b0e5b2
x-ms-traffictypediagnostic: CH2PR15MB3607:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3607E19D2DB942D20CBA3A5B9A740@CH2PR15MB3607.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(39860400002)(376002)(136003)(13464003)(199004)(189003)(8936002)(66446008)(8676002)(110136005)(7736002)(316002)(305945005)(229853002)(15650500001)(6436002)(81166006)(14444005)(256004)(81156014)(25786009)(44832011)(5660300002)(66556008)(64756008)(71190400001)(74316002)(76176011)(66476007)(7696005)(102836004)(53546011)(6506007)(486006)(71200400001)(11346002)(446003)(26005)(186003)(9686003)(2906002)(66066001)(3846002)(6116002)(476003)(52536014)(14454004)(478600001)(66946007)(76116006)(2501003)(86362001)(2201001)(33656002)(99286004)(55016002)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3607;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qnxXPkTNSrY/EbMWfjEDMqlIXdBX8hwZ/cF0dxrEhuHm3Z79p73UfbEAUpjRN9j2FvQNDhMrt0sqbHW2ZZVaUiKPgo1hhPOfebFm4QDJKHPclC5+VzFI5YkAVbGw+Aghr1f+0ISMlPAbLVUUudST9X64vZfTzLqIT8lkuAWNPTETzJKhrPInuTvB0UZg2K3C3ZpmnBNwtnfub2Ydz9daoeYSOXr9CUsg3fuTTAYEEq7r7pmYk9Uzpc5DC+63LJlcX5TKqb8p0dycneLY89nRTKD0/5183sKckTQm+W6/VBOV1aDdjKFiXJhoSa0g2TtgogQrngnJLYGZQyWSTc21n+POk+qBrAMTTVi3Quv4+kpX+shw5LasHy6tHglZrEQyxoheYfw9v1Iyypqo2gMQA+wDbIXPPd8Kx1RBymihk4LWwvFG1gZN1Xc/j6cWKEWP
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1437cba-5292-4988-0ed1-08d766b0e5b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 14:10:24.9173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YYtBeU2uJMsgiNl+N60XXkV6PP1VFXhcCfQye9L/ddwIEn6pUu+N4BP9dZg6BRtCScE7a5xN73IN7h93TVQwIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3607
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iUAe4-00C8oS-0C
Subject: Re: [tipc-discussion] [net-next] tipc: update mon's self addr when
 node addr generated
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

Acked.

///jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 11-Nov-19 04:24
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
> Subject: [net-next] tipc: update mon's self addr when node addr generated
> 
> In commit 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address
> hash values"), the 32-bit node address only generated after one second
> trial period expired. However the self's addr in struct tipc_monitor do
> not update according to node address generated. This lead to it is
> always zero as initial value. As result, sorting algorithm using this
> value does not work as expected, neither neighbor monitoring framework.
> 
> In this commit, we add a fix to update self's addr when 32-bit node
> address generated.
> 
> Fixes: 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address hash values")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  net/tipc/monitor.c | 15 +++++++++++++++
>  net/tipc/monitor.h |  1 +
>  net/tipc/net.c     |  2 ++
>  3 files changed, 18 insertions(+)
> 
> diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
> index 6a6eae88442f..58708b4c7719 100644
> --- a/net/tipc/monitor.c
> +++ b/net/tipc/monitor.c
> @@ -665,6 +665,21 @@ void tipc_mon_delete(struct net *net, int bearer_id)
>  	kfree(mon);
>  }
> 
> +void tipc_mon_reinit_self(struct net *net)
> +{
> +	struct tipc_monitor *mon;
> +	int bearer_id;
> +
> +	for (bearer_id = 0; bearer_id < MAX_BEARERS; bearer_id++) {
> +		mon = tipc_monitor(net, bearer_id);
> +		if (!mon)
> +			continue;
> +		write_lock_bh(&mon->lock);
> +		mon->self->addr = tipc_own_addr(net);
> +		write_unlock_bh(&mon->lock);
> +	}
> +}
> +
>  int tipc_nl_monitor_set_threshold(struct net *net, u32 cluster_size)
>  {
>  	struct tipc_net *tn = tipc_net(net);
> diff --git a/net/tipc/monitor.h b/net/tipc/monitor.h
> index 2a21b93e0d04..ed63d2e650b0 100644
> --- a/net/tipc/monitor.h
> +++ b/net/tipc/monitor.h
> @@ -77,6 +77,7 @@ int __tipc_nl_add_monitor(struct net *net, struct tipc_nl_msg *msg,
>  			  u32 bearer_id);
>  int tipc_nl_add_monitor_peer(struct net *net, struct tipc_nl_msg *msg,
>  			     u32 bearer_id, u32 *prev_node);
> +void tipc_mon_reinit_self(struct net *net);
> 
>  extern const int tipc_max_domain_size;
>  #endif
> diff --git a/net/tipc/net.c b/net/tipc/net.c
> index 85707c185360..2de3cec9929d 100644
> --- a/net/tipc/net.c
> +++ b/net/tipc/net.c
> @@ -42,6 +42,7 @@
>  #include "node.h"
>  #include "bcast.h"
>  #include "netlink.h"
> +#include "monitor.h"
> 
>  /*
>   * The TIPC locking policy is designed to ensure a very fine locking
> @@ -136,6 +137,7 @@ static void tipc_net_finalize(struct net *net, u32 addr)
>  	tipc_set_node_addr(net, addr);
>  	tipc_named_reinit(net);
>  	tipc_sk_reinit(net);
> +	tipc_mon_reinit_self(net);
>  	tipc_nametbl_publish(net, TIPC_CFG_SRV, addr, addr,
>  			     TIPC_CLUSTER_SCOPE, 0, addr);
>  }
> --
> 2.20.1


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
