Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2716F2E9C
	for <lists+tipc-discussion@lfdr.de>; Mon,  1 May 2023 07:23:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ptLzx-0000hn-V5;
	Mon, 01 May 2023 05:22:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1ptLzw-0000hW-Fh
 for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 05:22:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CJX3VBJH4bIqN7zoEJ0/hdyPMC2N+P1frIL3Ug3bHRw=; b=nMsnx+lUL8pX1jIi+9EJnL/og0
 dgs55x4/aOKjO1PkvaqrSqUJgMx6mKiTt212Vm1rkvQVwxyPbyyPbKiC9MWUIIiPMUB23Mv5KuNSH
 Cd8G7NPGf6xaFcGSKAbd9mDPFJTT7yR9Ni9rzam/zf/M/4t2jo3wqcfsy4ZOFslyeRR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CJX3VBJH4bIqN7zoEJ0/hdyPMC2N+P1frIL3Ug3bHRw=; b=ERcWXvU59sOO5B9vTDbNAySWgM
 7BsYT/rrI6Qm82u+plpyH3qTk4m7ntMB2RipmRUOvhEXJ9sq5fVIR9isLJVsqIgWHG23w2+ZZq24H
 SA+mdvhtUwoLgUmRrpSAdx2Uf6bjW5F48OwspvW/JG86sGgIxSWxUjUkRhjCRX5URQOc=;
Received: from mail-db8eur05on2130.outbound.protection.outlook.com
 ([40.107.20.130] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptLzs-009SQQ-9Y for tipc-discussion@lists.sourceforge.net;
 Mon, 01 May 2023 05:22:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L+PK1FSvDJAs/idPV4ICT6Qj/wErgbANl8pyAbkOgFQfZydUrfB3MZ7P9SGlizV0Y4JoT9G9NEcQ7//jYZKZXJQcu3GmUm3Oz0VjlIolVwvIA2JnuodkNZSejaC3LAK3u2AEZxAOzrclONJqqO0BpXX6c1pgVGl58kDZalKynsqRR5r+IHwkHFqtq1+1qqCvjxRdSBQ/oaYzsuhahxVnSl9PH4wjBCbrq0ATRM7XU/vI6RCCeEyPTYWmfkpe8dGpTTeolvJu4s2M/WoHRSv3AnAlL5umRrDjv8Z9+9Y75KIkn3hAjXSCWawdmsK5MrM3FbF/AUO7PidovxjRPu8RCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CJX3VBJH4bIqN7zoEJ0/hdyPMC2N+P1frIL3Ug3bHRw=;
 b=I8rAvR63090hNnx6NnutDy26aBz+oiH5o9OTKtVkMvKwEdArQjO3mtfhgJvYzYETbgfXFH629aLZPsH8Jd7gGPgrmAAmRXfM7ddPFvMr9reO546UdyDXKgqhXlEPVRnUA/1ovieUcPnxMv6Ff/tF7CH6arIUd6rZsLTpPcsfXftvLPZDmQJnyT9mDx04tUJHh+JxqZK6PtkFDN/f6UKqUog+BFSmkTlI+T3O44kfj7aBkd5sytmBg2sNLeKQP3EmKWWcMcVUK5DG8ey6kYG64jhKN3RQHxMSkwXEvCtrrFcnVoe3Dpuxe4f8fS+mueRewKp478MkXK2zkl70rcSRbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJX3VBJH4bIqN7zoEJ0/hdyPMC2N+P1frIL3Ug3bHRw=;
 b=QNwwuU9LYya93K4uYY0bifdLvkYYuSzLxPyRyNmvi+JQ3lhJRs4Tpx9rBlhTzRTK+UwPrhYM4Zyn5NasB814tX5E3WvtAwEhHzAKsg9+8LQYVnLSuqibO0QMGzClIfZ/w7WFHpDqxV6zPoCuetcJe/TkVwxqgOkmYTL5b5NO074=
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com (2603:10a6:10:36a::7)
 by DB9PR05MB9439.eurprd05.prod.outlook.com (2603:10a6:10:361::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.29; Mon, 1 May
 2023 05:22:39 +0000
Received: from DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25]) by DB9PR05MB9078.eurprd05.prod.outlook.com
 ([fe80::bb8:eab5:13e9:6d25%6]) with mapi id 15.20.6340.029; Mon, 1 May 2023
 05:22:39 +0000
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH net 2/2] tipc: do not update mtu if msg_max is too small
Thread-Index: AQHZeuuue9C0rw8QC0ekZIjEXUUKCK9E4BYw
Date: Mon, 1 May 2023 05:22:39 +0000
Message-ID: <DB9PR05MB9078EEAED80E2E7807DB9BE1886E9@DB9PR05MB9078.eurprd05.prod.outlook.com>
References: <cover.1682807958.git.lucien.xin@gmail.com>
 <22ba689983844705563c15c2f16e6381f2a0412c.1682807958.git.lucien.xin@gmail.com>
In-Reply-To: <22ba689983844705563c15c2f16e6381f2a0412c.1682807958.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR05MB9078:EE_|DB9PR05MB9439:EE_
x-ms-office365-filtering-correlation-id: 99ff3157-46f1-4546-e1aa-08db4a041501
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AvjckzkohfAyzNWWatBNjMfzcPA/nsjKo7ErY42eb4v6iiK8xd7s7B0op5Azcpb0EXEIctgxawzHrPey6ll9qTpY5NWmfYI/kNctpVpMR1QPewlwQhIZvWJCr+nTymkJ0WaRJoJSNzmtrxLeGXHSXMeU7oNf/68G2M/1IHlRi/qE7uOGqQbLzAg2/DaUXKDoea1+ofJniiN868WR7I4xH5AHb7xQvkfTZhbC4EiEC38TKEAmzMbyn4XiAAXwfjdsy6XXkjKKfiEjWxyht0q/LsVDxiSA6Dci1bLbMdEKkRyT/5GkIGs/yDfyAPRrQqqY9FMM9ROy2wWxVdkntKrtSh5HnNVYN3k6R5+/XMqdtpHprGAnZN3TV4jTOqT4KWYrZ7JZ8sGyXD/rL3Rh73cigiC6mhsehBn5V6hY5vWnbM8RMw2HEe5b34U1lRsCf0sXxvqg2PuDA85VgNeEauD99FZ9/lW67FZCa2Biq9EZ/fK5GZnc5RbVulOWmku768BMRnKHTbse1otUf7yO45se26JeQ1zPru821E05v4yYiCOqt/TOUbbu7reY8tzwg6Avfgug2O79BldoGRjpXIkqRbeEmbrnnetBOf60wqD/sAVrczZLDh5jui6Q9OeZWjsP7HVgjPcRcnTDRjZNzDhz3VDVWFFbOvFvZ+Hteg+WrEE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB9078.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(396003)(346002)(39840400004)(376002)(136003)(451199021)(52536014)(8936002)(8676002)(5660300002)(41300700001)(316002)(38070700005)(86362001)(33656002)(2906002)(38100700002)(15650500001)(122000001)(55016003)(186003)(83380400001)(478600001)(7696005)(71200400001)(26005)(6506007)(9686003)(4326008)(54906003)(76116006)(110136005)(66476007)(66556008)(66446008)(64756008)(66946007)(160913001)(15963001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?37YbOka/NIrWmgpu2q+ZFN23P/90vLX3pnCl7XxNUWaBe43cgBZWp/XAO2kt?=
 =?us-ascii?Q?cbZjZUBNcdTzRXmmLTb3QR192gb+TwmbFeZj7sorx72wbCf6YZkPoASWZ6Xq?=
 =?us-ascii?Q?qJeyudjgVlPQ8+NiKGfT4KuyKXjTMbAmPpOd1FmtAEwUIHPVF84MOtJxzHqU?=
 =?us-ascii?Q?HNit25ZD6ewNPhUgiDlJ+jo14J7nWJODgVm6EWyeZa6UPMDyVd1N4TvjPAet?=
 =?us-ascii?Q?N1uzRRD8lrNWqZjfvP/FpE+XhNnJ6dVJJicfU9YUeA/PBwXX4Vjc5J1h0fwn?=
 =?us-ascii?Q?W9VXBBB+1Sxm2/KaFPrEioO3rbQXxGEG4UkZHfVh+QG2Fs4nqfVl3oJ/bJ77?=
 =?us-ascii?Q?nVM22/hjWC9CnePhlhsuRJIcn6TzbxKdTuLjiUP8uGIimLYkZk+1jPjTFQm6?=
 =?us-ascii?Q?KZlEgl9EUq6YSI2X+KuFrHgXKG78Zl1/7Nn3nobRM3MRl8/8GOBwfLoozfS0?=
 =?us-ascii?Q?FcSXtLrYkjxtWa5Zyoaykdfg6OTinQJ+Ezy5zodcR4JBO8sU214sS5nWbdzH?=
 =?us-ascii?Q?B4g3zlez/+wBkvAgei5RZTjP7PfLccc3FR0RwsQz/o/6tiEQsT62icHpcdzO?=
 =?us-ascii?Q?F/3ogojatgxog9eHdxUAnq2t/BSzKRP2cRn2z6KWoZpXd1PKf9gR4AMXHmHz?=
 =?us-ascii?Q?X1qykAIQF4Cyft621ltbOOZauZ37y68mVvJLa2E5E+dXeYhSvDLN2Oss652V?=
 =?us-ascii?Q?nqZEktI9kB6dA8yC2Z5YnzYnL5tE/N0Us/z5U0Mi9J2U3+pHCaRbuQMRQolb?=
 =?us-ascii?Q?RjXycb9HDYdyhIpe501T8I7CuyPEY4SYu0b37Qmoe55k6XMSlrHd3+1jgp8c?=
 =?us-ascii?Q?Sz2tv1pSLuUpjuKMrUHd/lKJnQECBayE2ljvA+j20NTJWCI600QEc5GNIbvk?=
 =?us-ascii?Q?x9NvNc4gsERmQqA5Z69IE/8Z7GA4xvEwGFty/FSGGGdoxpMmIjv5MZK8lh13?=
 =?us-ascii?Q?JjwbpVklgg+4a2y9oMdYBnUuc6oVmKUJ4FQ1Tg9RDx8thfEIRzXvE72ORiIT?=
 =?us-ascii?Q?SbxeHoaTbIzq1G+qQxQuGTMQbnNrRFPZRbiinNfzhzYeVkj6XS9wTSEF8v+I?=
 =?us-ascii?Q?QGffJqb8TFKQdt/3AdHu8YeAWXrV4dHdv3LKiJEz2dGOWazJqZYzILR56Nnv?=
 =?us-ascii?Q?tDoLL+o+XGyauK7n3P0hSkv98X+1jdl3xZlQtFGsElA8wBKJq4iE6Yd2jezm?=
 =?us-ascii?Q?emUs1tMhRJTrIzxj1ulvH+oBnM9J40YqDH1AGzn7/i3iOAuYnuULsPPoVtul?=
 =?us-ascii?Q?kcq4DAAO5gGC8UCr1ULbtn/MhxWI+DL1BSe8xemic607zlHT/rnJ2n1FwSHv?=
 =?us-ascii?Q?IgxDMLmWTD90XHb7j6NgZ6FXS1PanOIJV3pLEzgyZfOVX8IH4bGHS1LDfzQA?=
 =?us-ascii?Q?bd6/fq4B1QBI+QuKEAyggqMrZGXCqNU2pjcFQINEFX1dcIdGCC+D5rjy0plq?=
 =?us-ascii?Q?ECu617c+Onj870xtUycXBYNxTxKtmcs2x+FGLOlt52FXttuA4/ACFj/jdPM/?=
 =?us-ascii?Q?/ACtxenL0Rge6zExkeBYiPhTihnCLnFNFgQib3xErPXHxRYRhiEFeLqD91v8?=
 =?us-ascii?Q?wgCXokV16PJNjVtovs1QN09cLeENZu8FtB09XeYK?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB9078.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99ff3157-46f1-4546-e1aa-08db4a041501
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2023 05:22:39.5742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wxe0XDPLSosn1imNCQWQ61jE9SGERIcKjWzpmaiIL+DclJhYYi5LP1KuUo7q/+w0ez3lWq5Tf5E7L7jKwxJb1vdxNOebyIBZYp8FbVV00TU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR05MB9439
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.130 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ptLzs-009SQQ-9Y
Subject: Re: [tipc-discussion] [PATCH net 2/2] tipc: do not update mtu if
 msg_max is too small
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
From: Tung Quang Nguyen via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Cc: "kuba@kernel.org" <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



>-----Original Message-----
>From: Xin Long <lucien.xin@gmail.com>
>Sent: Sunday, April 30, 2023 5:41 AM
>To: network dev <netdev@vger.kernel.org>; tipc-discussion@lists.sourceforge.net
>Cc: davem@davemloft.net; kuba@kernel.org; Eric Dumazet <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Jon Maloy
><jmaloy@redhat.com>
>Subject: [PATCH net 2/2] tipc: do not update mtu if msg_max is too small
>
>When doing link mtu negotiation, a malicious peer may send Activate msg
>with a very small mtu, e.g. 4 in Shuang's testing, without checking for
>the minimum mtu, l->mtu will be set to 4 in tipc_link_proto_rcv(), then
>n->links[bearer_id].mtu is set to 4294967228, which is a overflow of
>'4 - INT_H_SIZE - EMSG_OVERHEAD' in tipc_link_mss().
>
>With tipc_link.mtu = 4, tipc_link_xmit() kept printing the warning:
>
> tipc: Too large msg, purging xmit list 1 5 0 40 4!
> tipc: Too large msg, purging xmit list 1 15 0 60 4!
>
>And with tipc_link_entry.mtu 4294967228, a huge skb was allocated in
>named_distribute(), and when purging it in tipc_link_xmit(), a crash
>was even caused:
>
>  general protection fault, probably for non-canonical address 0x2100001011000dd: 0000 [#1] PREEMPT SMP PTI
>  CPU: 0 PID: 0 Comm: swapper/0 Kdump: loaded Not tainted 6.3.0.neta #19
>  RIP: 0010:kfree_skb_list_reason+0x7e/0x1f0
>  Call Trace:
>   <IRQ>
>   skb_release_data+0xf9/0x1d0
>   kfree_skb_reason+0x40/0x100
>   tipc_link_xmit+0x57a/0x740 [tipc]
>   tipc_node_xmit+0x16c/0x5c0 [tipc]
>   tipc_named_node_up+0x27f/0x2c0 [tipc]
>   tipc_node_write_unlock+0x149/0x170 [tipc]
>   tipc_rcv+0x608/0x740 [tipc]
>   tipc_udp_recv+0xdc/0x1f0 [tipc]
>   udp_queue_rcv_one_skb+0x33e/0x620
>   udp_unicast_rcv_skb.isra.72+0x75/0x90
>   __udp4_lib_rcv+0x56d/0xc20
>   ip_protocol_deliver_rcu+0x100/0x2d0
>
>This patch fixes it by checking the new mtu against tipc_bearer_min_mtu(),
>and not updating mtu if it is too small.
>
>Fixes: ed193ece2649 ("tipc: simplify link mtu negotiation")
>Reported-by: Shuang Li <shuali@redhat.com>
>Signed-off-by: Xin Long <lucien.xin@gmail.com>
>---
> net/tipc/link.c | 7 ++++---
> 1 file changed, 4 insertions(+), 3 deletions(-)
>
>diff --git a/net/tipc/link.c b/net/tipc/link.c
>index b3ce24823f50..a9e46c58b28a 100644
>--- a/net/tipc/link.c
>+++ b/net/tipc/link.c
>@@ -2200,7 +2200,7 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
> 	struct tipc_msg *hdr = buf_msg(skb);
> 	struct tipc_gap_ack_blks *ga = NULL;
> 	bool reply = msg_probe(hdr), retransmitted = false;
>-	u32 dlen = msg_data_sz(hdr), glen = 0;
>+	u32 dlen = msg_data_sz(hdr), glen = 0, msg_max;
> 	u16 peers_snd_nxt =  msg_next_sent(hdr);
> 	u16 peers_tol = msg_link_tolerance(hdr);
> 	u16 peers_prio = msg_linkprio(hdr);
>@@ -2283,8 +2283,9 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
> 		l->peer_session = msg_session(hdr);
> 		l->in_session = true;
> 		l->peer_bearer_id = msg_bearer_id(hdr);
>-		if (l->mtu > msg_max_pkt(hdr))
>-			l->mtu = msg_max_pkt(hdr);
>+		msg_max = msg_max_pkt(hdr);
>+		if (msg_max >= tipc_bearer_min_mtu(l->net, l->bearer_id) && l->mtu > msg_max)
>+			l->mtu = msg_max;
If this link receives a malicious ACTIVATE_MSG from a peer, this message should be dropped. It is better if the check " msg_max < tipc_bearer_min_mtu()" is put at the beginning of this ACTIVATE_MSG handling and we break immediately.
> 		break;
>
> 	case STATE_MSG:
>--
>2.39.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
