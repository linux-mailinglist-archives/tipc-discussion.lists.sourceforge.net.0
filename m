Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EA645DE9
	for <lists+tipc-discussion@lfdr.de>; Fri, 14 Jun 2019 15:17:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hbm4l-0000R4-Vg; Fri, 14 Jun 2019 13:17:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hbm4k-0000Qr-3j
 for tipc-discussion@lists.sourceforge.net; Fri, 14 Jun 2019 13:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y6mHPFL1D0aWqrhTMGgOQe4mtMFZWUR17EWorpgC0BE=; b=LoGA4urXXxcERGnR8iSMNEva2D
 MvkYynccf3N3QRlLDQPjqnDQf9DKSsofqhD9CCHhD8r8ydEL1eXjKVFp2kFmw5oajBg3viQAYZ8nF
 LPZyyWj5GZFAfolRaDqgBAsP5fCQ990KP6ARtLc/VqP5PCypmEwZlpHSHO1kQiy6pgUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y6mHPFL1D0aWqrhTMGgOQe4mtMFZWUR17EWorpgC0BE=; b=Pfh1tGxCVGQYco8vDC0WLnEu1N
 4y7KaidGWvWwj5Lel3cZR+pXaXx1S0aTdq+mPwNOHwqmA3xdlMmhuBjWkLlsTWn0Ss5DOqOkpH1an
 +So4fJjIywIrrLvfSM2G78bytZsVb5dRoOO1zNJHVwBZhC5bJa14AnMg/DZ0nrx1WMP0=;
Received: from mail-eopbgr750073.outbound.protection.outlook.com
 ([40.107.75.73] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hbm4f-00DI53-TL
 for tipc-discussion@lists.sourceforge.net; Fri, 14 Jun 2019 13:17:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6mHPFL1D0aWqrhTMGgOQe4mtMFZWUR17EWorpgC0BE=;
 b=cViVCKheT2quXIWqCB4Z7v6KCY+kdbMvqkrysJyPpsyjhIrCbzRpoCc5kZHWKsTrtS+530jx2oN8ze9DEKZSI/1ge47CW0rFpLpbGlB0SQcr/Za5HUkYTAd90AWyy6G940MRyIb6HD7Bw0raXw/ZqLhUXPTrsTBFKPP5fZEFwcE=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (52.132.228.77) by
 CH2PR15MB3656.namprd15.prod.outlook.com (52.132.229.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Fri, 14 Jun 2019 13:00:56 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::8d6a:e759:6fd:5ee0%7]) with mapi id 15.20.1987.013; Fri, 14 Jun 2019
 13:00:56 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [net] tipc: fix issues with early FAILOVER_MSG from peer
Thread-Index: AQHVIp3bu9hdXCXjHECyhhblWU8bZ6abHFAg
Date: Fri, 14 Jun 2019 13:00:55 +0000
Message-ID: <CH2PR15MB35756F56F591B55728BF21FC9AEE0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190614104101.24276-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20190614104101.24276-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e90cefb-885f-433e-2730-08d6f0c856e8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3656; 
x-ms-traffictypediagnostic: CH2PR15MB3656:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3656631E143A602B3623748F9AEE0@CH2PR15MB3656.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(39860400002)(366004)(346002)(376002)(199004)(189003)(13464003)(64756008)(53546011)(73956011)(66446008)(66946007)(66556008)(66476007)(76116006)(305945005)(6506007)(76176011)(7736002)(14454004)(229853002)(478600001)(86362001)(316002)(2201001)(14444005)(256004)(110136005)(6246003)(25786009)(66066001)(7696005)(53936002)(81166006)(99286004)(33656002)(8676002)(81156014)(102836004)(8936002)(3846002)(52536014)(71200400001)(6116002)(9686003)(68736007)(55016002)(71190400001)(6436002)(26005)(2906002)(186003)(74316002)(44832011)(5660300002)(2501003)(486006)(476003)(446003)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3656;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W4UfFIVIPRA1jDiy57GSfZ3sjWe+yw9RvwZzGfOQms+6aoWXWQ1uHbDRYBlyoNUE99/u2RfggVrlDX1I3dDnJ9mjHwcyJOsIOox6d41HbwxfFqa6a2rDeyRE12ErLCEjStQwSQq5pFJsWh7hbu2zpmML8uadynJzG2SWpZ8bvx1fBOBCUcdMmbx4B0qljjZFFpiOiT9nTBM9Sskj19zlQJSfORvWtT+kbkYQazDtx+yTZ1e20T8wZE3lXrowRUh+1o108r28FDxXBtYufYimV7i2HrTmE8DJcuT4eEuWOHeKrGy0BzWcP++oRjBn2VYBRp/T6WSxVI2s3ohKR1R0svwSZkXcVAf3w76GTz9f269h0ja5TteCFhkKKY/FVobMyhQVo9vjcUHMhGV2EWIL7/aDWMKMER22xPK6gZgt+Rw=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e90cefb-885f-433e-2730-08d6f0c856e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 13:00:56.0115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3656
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.75.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hbm4f-00DI53-TL
Subject: Re: [tipc-discussion] [net] tipc: fix issues with early
 FAILOVER_MSG from peer
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

Acked-by: Jon

///jon


> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 14-Jun-19 06:41
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com; ying.xue@windriver.com
> Subject: [net] tipc: fix issues with early FAILOVER_MSG from peer
> 
> It appears that a FAILOVER_MSG can come from peer even when the failure
> link is resetting (i.e. just after the 'node_write_unlock()'...). This means the
> failover procedure on the node has not been started yet.
> The situation is as follows:
> 
>          node1                                node2
>   linkb          linka                  linka        linkb
>     |              |                      |            |
>     |              |                      x failure    |
>     |              |                  RESETTING        |
>     |              |                      |            |
>     |              x failure            RESET          |
>     |          RESETTING             FAILINGOVER       |
>     |              |   (FAILOVER_MSG)     |            |
>     |<-------------------------------------------------|
>     | *FAILINGOVER |                      |            |
>     |              | (dummy FAILOVER_MSG) |            |
>     |------------------------------------------------->|
>     |            RESET                    |            | FAILOVER_END
>     |         FAILINGOVER               RESET          |
>     .              .                      .            .
>     .              .                      .            .
>     .              .                      .            .
> 
> Once this happens, the link failover procedure will be triggered wrongly on the
> receiving node since the node isn't in FAILINGOVER state but then another link
> failover will be carried out.
> The consequences are:
> 
> 1) A peer might get stuck in FAILINGOVER state because the 'sync_point'
> was set, reset and set incorrectly, the criteria to end the failover would not be
> met, it could keep waiting for a message that has already received.
> 
> 2) The early FAILOVER_MSG(s) could be queued in the link failover deferdq
> but would be purged or not pulled out because the 'drop_point'
> was not set correctly.
> 
> 3) The early FAILOVER_MSG(s) could be dropped too.
> 
> 4) The dummy FAILOVER_MSG could make the peer leaving FAILINGOVER
> state shortly, but later on it would be restarted.
> 
> The same situation can also happen when the link is in PEER_RESET state and a
> FAILOVER_MSG arrives.
> 
> The commit resolves the issues by forcing the link down immediately, so the
> failover procedure will be started normally (which is the same as when
> receiving a FAILOVER_MSG and the link is in up state).
> 
> Also, the function "tipc_node_link_failover()" is toughen to avoid such a
> situation from happening.
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c |  1 -
>  net/tipc/node.c | 10 +++++++---
>  2 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c index
> d5ed509e0660..bcfb0a4ab485 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1762,7 +1762,6 @@ void tipc_link_failover_prepare(struct tipc_link *l,
> struct tipc_link *tnl,
>  	 * node has entered SELF_DOWN_PEER_LEAVING and both peer nodes
>  	 * would have to start over from scratch instead.
>  	 */
> -	WARN_ON(l && tipc_link_is_up(l));
>  	tnl->drop_point = 1;
>  	tnl->failover_reasm_skb = NULL;
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c index
> e4dba865105e..65644642c091 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -777,9 +777,9 @@ static void tipc_node_link_up(struct tipc_node *n,
> int bearer_id,
>   *	   disturbance, wrong session, etc.)
>   *	3. Link <1B-2B> up
>   *	4. Link endpoint 2A down (e.g. due to link tolerance timeout)
> - *	5. Node B starts failover onto link <1B-2B>
> + *	5. Node 2 starts failover onto link <1B-2B>
>   *
> - *	==> Node A does never start link/node failover!
> + *	==> Node 1 does never start link/node failover!
>   *
>   * @n: tipc node structure
>   * @l: link peer endpoint failingover (- can be NULL) @@ -794,6 +794,10 @@
> static void tipc_node_link_failover(struct tipc_node *n, struct tipc_link *l,
>  	if (!tipc_link_is_up(tnl))
>  		return;
> 
> +	/* Don't rush, failure link may be in the process of resetting */
> +	if (l && !tipc_link_is_reset(l))
> +		return;
> +
>  	tipc_link_fsm_evt(tnl, LINK_SYNCH_END_EVT);
>  	tipc_node_fsm_evt(n, NODE_SYNCH_END_EVT);
> 
> @@ -1719,7 +1723,7 @@ static bool tipc_node_check_state(struct
> tipc_node *n, struct sk_buff *skb,
>  	/* Initiate or update failover mode if applicable */
>  	if ((usr == TUNNEL_PROTOCOL) && (mtyp == FAILOVER_MSG)) {
>  		syncpt = oseqno + exp_pkts - 1;
> -		if (pl && tipc_link_is_up(pl)) {
> +		if (pl && !tipc_link_is_reset(pl)) {
>  			__tipc_node_link_down(n, &pb_id, xmitq, &maddr);
>  			trace_tipc_node_link_down(n, true,
>  						  "node link down <- failover!");
> --
> 2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
