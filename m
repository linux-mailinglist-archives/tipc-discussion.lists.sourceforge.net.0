Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BD02C2896
	for <lists+tipc-discussion@lfdr.de>; Tue, 24 Nov 2020 14:46:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1khYe6-0001xe-7Y; Tue, 24 Nov 2020 13:46:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <holger.brunck@hitachi-powergrids.com>)
 id 1khYe4-0001xS-1Q
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Nov 2020 13:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xaCOabCgJKmHwV0XT19jE9Umrdj+1TE3zB82iU6RIcU=; b=LPAw2VOgPBGWJJSYhhAw27IRVX
 1ZVXLUj3zggOsbilEZ2SXsSzzCZdsMnoI09YHOUoK6f4gMHew0XIJg2C6103jcbN+WX46o/c9Mqej
 Pf0ZkNpmuc7Vv07D4bKdBOHxGyggm20tzCtt+QsAv3rmLeMkqNftbgfPS4zx0gCgpmPk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xaCOabCgJKmHwV0XT19jE9Umrdj+1TE3zB82iU6RIcU=; b=UbQ1UiBX3vZFGZWXmJU1DytZqo
 YnK+kXwIwatMQQmXm5a0j5j5SWTlrV2H6cGXkcKSfkY4VMvhtu26uZdP8x/6Bzvtg6WcuZsvjudoT
 5pAnM6g3upuX3MmTwRXQM054LvISIJQoQ/pfCE7vCLlNhdOa04ggSArfBkQNK4BaaL8c=;
Received: from mail-eopbgr60123.outbound.protection.outlook.com
 ([40.107.6.123] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1khYdx-002CX2-GR
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Nov 2020 13:46:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LR9kbU87zPAYaRx2pnVGIfUiD4XFQdSj3dXyejm5Ygz+70IxIlgTmml02kDqATk1TicZLAXvuRtbIhxbhzfE0QQIvHr4693RTAeXVoP/aKjFI6otWah18+yciHlj6tiNM+xrdPa1Q7vxEb4GcSDnuoD2Pu9tgv17w2QX4hAILh8bsloKVDj3rd7DgSR+8M58W7dzF2GQoXOAZAFqSP8inOecH0S+BCi87Ax/QUcNcQYJ3S0i+UrmZwHN3yrtVMgZfL/8AjpJA1aZRUN+L9YvK/B+vjLFbWe1YZQ8nmkJHmbosbaJY+87tXuJhHH+9Q+vs0IdfpP6Y93nZ34iAbbEaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xaCOabCgJKmHwV0XT19jE9Umrdj+1TE3zB82iU6RIcU=;
 b=k2Ilp/sBB3HxQonV51hTZ2qnU7PxvBLQRu4jN/q41OI3BtqGA5DRVe8W6PztdUdvl+jx1ND0gBjaACjwQ7sIHnS+mwi8lJeEv5qefyO6ZkmE8QB6tlVbXUKTf2ot/L6+I8I6er3E1eAMUeqEkQ+6a/BhlXEu7hylUuk0luHezAhQvVk40dWPJewbC7+OF5YJU/x4w91voezCjvXMwLEflKPqFV+Q+VKaO3/FHuvyAsbgzGy3USJgbRN8FhiqxRqgR5CWovm1Aml6bk7HwalfIO/l5bMdxuyLuHtWx/LfEULmKXCJKvUB8zcRHiwjG8EJrlfPA9A6UnoscHNnSVE5vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hitachi-powergrids.com; dmarc=pass action=none
 header.from=hitachi-powergrids.com; dkim=pass
 header.d=hitachi-powergrids.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hitachi-powergrids.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xaCOabCgJKmHwV0XT19jE9Umrdj+1TE3zB82iU6RIcU=;
 b=d+3ZE2Mhez60oVtuIKgUYzQt/lfW63juVMGlWbA6COPq3Qbb9ett+rlioiE9iEw8WDzBbFYBeiFXgweuqVXLgCaVeKsOpv3iAz1n+Q1Afenu+n2JtdImA5zSxTrO9eMpZ/xVm7yxaowF8yzoIZ0TwC5cOQoPZJfgSn3YDMtsPJA=
Received: from AS8PR06MB7269.eurprd06.prod.outlook.com (2603:10a6:20b:259::19)
 by AM6PR06MB5336.eurprd06.prod.outlook.com (2603:10a6:20b:8c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.25; Tue, 24 Nov
 2020 10:13:14 +0000
Received: from AS8PR06MB7269.eurprd06.prod.outlook.com
 ([fe80::b828:89b5:b9dd:709f]) by AS8PR06MB7269.eurprd06.prod.outlook.com
 ([fe80::b828:89b5:b9dd:709f%3]) with mapi id 15.20.3611.020; Tue, 24 Nov 2020
 10:13:14 +0000
From: Holger Brunck <holger.brunck@hitachi-powergrids.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Thread-Topic: refcount warnings with TIPC in combination with a TAP device and
 fragmented messages
Thread-Index: AQHWvn3mi7mZVfwgkkSaH/lh1J9LoanVy+2AgAAE/kGAAUQOUIAAASqw
Date: Tue, 24 Nov 2020 10:13:14 +0000
Message-ID: <AS8PR06MB72697DBBF599867A84AD70BFCCFB0@AS8PR06MB7269.eurprd06.prod.outlook.com>
References: <AS8PR06MB7269EEC3A0C96ED05DE19B29CCE00@AS8PR06MB7269.eurprd06.prod.outlook.com>,
 <999af682-2051-8e01-d417-ad04e1f442fc@redhat.com>
 <AS8PR06MB726986B9C4A672C4640D8064CCFC0@AS8PR06MB7269.eurprd06.prod.outlook.com>
 <DB7PR05MB4315EFBDE5F6005390E8FF6E88FB0@DB7PR05MB4315.eurprd05.prod.outlook.com>
In-Reply-To: <DB7PR05MB4315EFBDE5F6005390E8FF6E88FB0@DB7PR05MB4315.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-processedbytemplafy: true
authentication-results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=hitachi-powergrids.com;
x-originating-ip: [80.75.192.107]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfd0364a-9a15-47b1-4221-08d890618e2f
x-ms-traffictypediagnostic: AM6PR06MB5336:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR06MB5336EAC49212F5AF44220382CCFB0@AM6PR06MB5336.eurprd06.prod.outlook.com>
x-abb-o365-outbound: ABBOUTBOUND1
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4VMcYr6lXLL6RnPL/8+bDyM1AjmbkovI89x7HJaHaiva/dExAzATIRzXk0bLf2azXgHEJ0T5SwXQzpoCTe+d+70HyPLK3LkJdQDnN1CcLvRx0Plpw0xRxBnKWqovBKKKh02gqshtTO2G24sn4FYgl5RAw7w0ead9QEsDc0pcDoYyHhhqLe4kXR1PzF5NzqtbNWUvGFSX8guPFUd0gBh7lhV9W07Xb457Dte9Noa5c9p0P3Cqk/5FIfgn3eli3DXT6NrmrSoTGCN+fWsBEVdNchqw4BXzuVCnXnlGCgRLn9IAcwbZE/02IcbEbcYiY0InApOttAvcQ46jdvUzJlvUng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7269.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(136003)(366004)(39860400002)(346002)(8936002)(5660300002)(6916009)(54906003)(30864003)(33656002)(83380400001)(45080400002)(44832011)(6506007)(26005)(52536014)(186003)(7696005)(4326008)(316002)(66446008)(64756008)(66556008)(66946007)(2906002)(76116006)(53546011)(66476007)(71200400001)(15650500001)(86362001)(478600001)(55016002)(8676002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 9xyHRx8SDmZ3Y+lFTEByQUlM6hP+3xzQATbyOAynF55zrl9EhZAAPIg0IfcRVY5W4EUqmQWTRgfkAipGm318zwsFVCvXLuTr2PqcNmmz5yX8H8w+X6rc4wTP3FaIJSgE+0FZdvFzosutREKeqmSRoGkIPLhpmxXqUNSDYVle25KkdeMxXC8mQ5flYF/M0wdOUzQibN7iL0TfpWCVOJIZ7qkUXyvdz/r4VBFKxYmr4g1oeR7KbYjoNivwP0RWzQoEDEqPbYKuv1uQXrLTngpYTeU2TH6X1cOJW7vq4v25fP0yqcSN5wfAGq3gbpP724XG+o9xs7dfs/uAeyUEdOn3qpp5lonLeeSP0MxqgmbnpgrR+DUeEJnqkL5ueXNVcGJ6Qbkd6lKDVxS6Zp7vqNsrJ1/y/qOBEj809BCvOICnYkLethxmL9lGC5rWIfNniB0/aRtbJyubCqtrMmq6lf2YUbrkJhADKa52CvPNlevAPdvghu0GIgiF5dXmPtFS1Y2T/p2BQDHWZOlB/hMeDR9G1E/O9T4UGDmwM5IITsPb7Ne3tjlbsnJxnB+Jk7AOLdgopc5ZnlKgfHPhL9m5cVhLd5Q61X6T/CQBuD88hG2vP7CRWtefp5v7uM82ti9aDZYAFmFrLlbp9oozoUHGpN+i01zRh7+XxJZCXPk8AEKz+hopa8WCnYAt3B4sposLtnMCIdPSwflCiz+ZUilTQhkCQP5oYaGwDJCMQ4Q3cZ9l+AgSDur8+19BrbC5mJ1FRPhNL7vtDMFyTDd1hOJ6DBghL02mt8hvMxizge3ELztNrWLh0X1P9dkJgS5EED2pTmSN53eUoUHpffKghDVojFGBlHKsZTi9bX3YFVDFoPS9WG9FKVZIsFVdkLPw+A+kHCL3ACLoIs9d7cwfNlUE06GLTg==
MIME-Version: 1.0
X-OriginatorOrg: hitachi-powergrids.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7269.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd0364a-9a15-47b1-4221-08d890618e2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2020 10:13:14.3369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7831e6d9-dc6c-4cd1-9ec6-1dc2b4133195
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2hQcwX9Z+3LLrEM9IKorugZeeFx40ihjYc3/cZB+sIxMmrJVKhHZvG3qomR7is5N+HAjIECu9GXbpAFLlOWCk2ydVSflai9t/jwLudx/kNA20fNziE42zz1A7mfVrPjM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5336
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.123 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1khYdx-002CX2-GR
Subject: Re: [tipc-discussion] refcount warnings with TIPC in combination
 with a TAP device and fragmented messages
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Matteo Ghidoni <matteo.ghidoni@hitachi-powergrids.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Tung Nguyen,
I said we first encountered the problem when migrating to 5.4. But the
backtrace dump and the ftrace log are done with kernel 5.10.0-rc4-17824.
So we were able to reproduce this behavior with latest  mainline kernel,
without any local modification of the kernel.

Best regards
Holger Brunck
 

> -----Original Message-----
> From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: Dienstag, 24. November 2020 11:05
> To: Holger Brunck <holger.brunck@hitachi-powergrids.com>
> Cc: CC: Xin Long <lucien.xin@gmail.com>; Matteo Ghidoni
> <matteo.ghidoni@hitachi-powergrids.com>; Jon Maloy
> <jmaloy@redhat.com>; tipc-discussion@lists.sourceforge.net
> Subject: RE: refcount warnings with TIPC in combination with a TAP device
> and fragmented messages
> 
> 
> Hi Holger,
> 
> You said you met this stack trace after migrating to "kernel 5.4". Can you give
> us a full version ?
> 
> Thanks.
> Tung Nguyen
> 
> -----Original Message-----
> From: Holger Brunck <holger.brunck@hitachi-powergrids.com>
> Sent: Monday, November 23, 2020 10:00 PM
> To: Jon Maloy <jmaloy@redhat.com>; tipc-discussion@lists.sourceforge.net
> Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; CC: Xin Long
> <lucien.xin@gmail.com>; Matteo Ghidoni <matteo.ghidoni@hitachi-
> powergrids.com>
> Subject: Re: refcount warnings with TIPC in combination with a TAP device
> and fragmented messages
> 
> Hi Jon,
> thanks.  To add some more information I was now using ftrace to see the call
> stack within TIPC/TAP and the related skb operations to narrow this down.
> Maybe someone more familiar with the receive flow in the TIPC stack sees
> already something suspicious.
> 
> Here is the trace starting from our program (main) sending the first fragment
> to the TAP device until the first WARN_ON sequence is written out when our
> client (tipc_ping) is receiving the reassembled packet:
> 
>      main-91      ....    84.4851: tun_chr_write_iter <-vfs_write              <-- first
> fragment arrives
>      main-91      ....    84.4851:   tun_get_user <-tun_chr_write_iter
>      main-91      ....    84.4851:     sock_alloc_send_pskb <-tun_get_user
>      main-91      ....    84.4851:       skb_set_owner_w <-sock_alloc_send_pskb
> <-- refcount add
>      main-91      ....    84.4851:     skb_put <-tun_get_user
>      main-91      ....    84.4852:     skb_copy_datagram_from_iter <-tun_get_user
> <-- copy data
>      main-91      ....    84.4852: tipc_l2_rcv_msg <-__netif_receive_skb_one_core
>      main-91      ....    84.4852:   tipc_rcv <-tipc_l2_rcv_msg
>      main-91      ...2    84.4852:     tipc_link_rcv <-tipc_rcv
>      main-91      ...2    84.4852:       tipc_link_advance_transmq <-tipc_link_rcv
>      main-91      ...2    84.4852:         kfree_skb <-tipc_link_advance_transmq
>      main-91      ...2    84.4852:           skb_release_all <-kfree_skb
>      main-91      ...2    84.4852:             skb_release_head_state <-
> skb_release_all
>      main-91      ...2    84.4852:             skb_release_data <-skb_release_all
>      main-91      ...2    84.4852:               skb_free_head <-skb_release_data
>      main-91      ...2    84.4852:           kfree_skbmem <-kfree_skb
>      main-91      ...2    84.4852:         kfree_skb <-tipc_link_advance_transmq
>      main-91      ...2    84.4852:           skb_release_all <-kfree_skb
>      main-91      ...2    84.4852:             skb_release_head_state <-
> skb_release_all
>      main-91      ...2    84.4852:             skb_release_data <-skb_release_all
>      main-91      ...2    84.4852:               skb_free_head <-skb_release_data
>      main-91      ...2    84.4852:           kfree_skbmem <-kfree_skb
>      main-91      ...2    84.4852:       tipc_data_input <-tipc_link_rcv
>      main-91      ...2    84.4852:       tipc_link_input <-tipc_link_rcv
>      main-91      ...2    84.4852:         tipc_buf_append <-tipc_link_input
>      main-91      ...2    84.4852:           skb_pull <-tipc_buf_append
>      main-91      ...2    84.4853:       tipc_link_advance_backlog <-tipc_link_rcv
>      main-91      ....    84.4853:     kfree_skb <-tipc_rcv
>      main-91      ....    84.4854: tun_chr_write_iter <-vfs_write       <--- second
> fragment
>      main-91      ....    84.4854:   tun_get_user <-tun_chr_write_iter
>      main-91      ....    84.4854:     sock_alloc_send_pskb <-tun_get_user
>      main-91      ....    84.4854:       skb_set_owner_w <-sock_alloc_send_pskb
>      main-91      ....    84.4854:     skb_put <-tun_get_user
>      main-91      ....    84.4854:     skb_copy_datagram_from_iter <-tun_get_user
>      main-91      ....    84.4854: tipc_l2_rcv_msg <-__netif_receive_skb_one_core
>      main-91      ....    84.4854:   tipc_rcv <-tipc_l2_rcv_msg
>      main-91      ...2    84.4854:     tipc_link_advance_transmq <-tipc_link_rcv
>      main-91      ...2    84.4854:     tipc_data_input <-tipc_link_rcv
>      main-91      ...2    84.4854:       tipc_link_input <-tipc_link_rcv
>      main-91      ...2    84.4854:         tipc_buf_append <-tipc_link_input
>      main-91      ...2    84.4854:           skb_pull <-tipc_buf_append
>      main-91      ...2    84.4854:           skb_try_coalesce <-tipc_buf_append
>      main-91      ...2    84.4854:         tipc_data_input <-tipc_link_input
>      main-91      ...2    84.4854:       skb_queue_tail <-tipc_data_input
>      main-91      ....    84.4854:     tipc_sk_rcv <-tipc_rcv
>      main-91      ....    84.4854:       tipc_sk_lookup <-tipc_sk_rcv
>      main-91      ...1    84.4854:       tipc_sk_filter_rcv <-tipc_sk_rcv
>      main-91      ...1    84.4854:         sock_wfree <-tipc_sk_filter_rcv
>      main-91      ...1    84.4854:           tun_sock_write_space <-sock_wfree
>      main-91      ...1    84.4854:         tipc_data_ready <-tipc_sk_filter_rcv
>      main-91      ....    84.4855:         tipc_node_distr_xmit <-tipc_sk_rcv
>      main-91      ....    84.4855:     kfree_skb <-tipc_rcv
> tipc_ping-97      ....    84.4855: tipc_poll <-sock_poll                <-- tipc_ping
> receives the packet
> tipc_ping-97      ....    84.4859: tipc_recvmsg <-__sys_recvfrom
> tipc_ping-97      ....    84.4859:   tipc_wait_for_rcvmsg <-tipc_recvmsg
> tipc_ping-97      ....    84.4859:   tipc_sk_set_orig_addr <-tipc_recvmsg
>                                                    skb_copy_datagram_msg
> tipc_ping-97      ....    84.4859:       skb_copy_datagram_iter <-tipc_recvmsg
> tipc_ping-97      ....    84.4859:   kfree_skb <-tsk_advance_rx_queue
> tipc_ping-97      ....    84.4859:     skb_release_all <-kfree_skb
> tipc_ping-97      ....    84.4859:       skb_release_head_state <-skb_release_all
> tipc_ping-97      ....    84.4859:       skb_release_data <-skb_release_all
> tipc_ping-97      ....    84.4859:         kfree_skb <-skb_release_data
> tipc_ping-97      ....    84.4859:           skb_release_all <-kfree_skb
> tipc_ping-97      ....    84.4859:             skb_release_head_state <-
> skb_release_all
> tipc_ping-97      ....    84.4859:             sock_wfree <-skb_release_head_state
> tipc_ping-97      ....    84.4859:               warn_slowpath_fmt <-
> refcount_warn_saturate  <--- first WARN_ON dump
> tipc_ping-97      ....    84.4897:               __warn <-warn_slowpath_fmt
> tipc_ping-97      ....    84.5227:               dump_backtrace <-show_stack
> 
> 
> Best regards
> Holger Brunck
> 
> 
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: 23 November 2020 15:25
> To: Holger Brunck <holger.brunck@hitachi-powergrids.com>; tipc-
> discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
> Cc: CC: Tung Nguyen <tung.q.nguyen@dektech.com.au>; CC: Xin Long
> <lucien.xin@gmail.com>; Matteo Ghidoni <matteo.ghidoni@hitachi-
> powergrids.com>
> Subject: Re: refcount warnings with TIPC in combination with a TAP device
> and fragmented messages
> 
> 
> 
> 
> Hi Holger,
> We will look into this. It is a new setup for us, so it has to be prepared first.
> 
> ///jon
> 
> 
> On 11/19/20 9:33 AM, Holger Brunck wrote:
> > Hi all,
> > we have currently problems with TIPC in combination with a TAP
> > interface and fragmented messages. We have a Kirkwood board getting
> > TIPC ethernet packets from a third party stack in user space which we
> > fill into a TAP device to pass this packets to the kernel. On the
> > remote side we have another board with a physical ethernet device.
> > After migrating to kernel 5.4 we saw kernel crashes as soon as we send
> fragmented TIPC messages via this link. Before the kernel crash we see
> "refcount_t: underflow; use-after-free"
> > warnings coming either from the TIPC or the driver/net/tun.
> > For smaller packets everything work fine. To track this down we wrote
> > a small test program which receives raw ethernet packets in user space
> > and send them back to kernel space via a TAP interface, to be able to
> reproduce it with a mainline kernel only.
> > So instead of a link e.g. eth0:eth0 we have a link from eth0:tap0.
> >
> > I now tested this on latest mainline kernel and still see warnings
> > coming from the kernel, but not the crash.
> > So in the testcase we have TIPC server running on a remote board
> > having a ethernet bearer on a interface. The ethernet interface is
> > connected to the ethernet interface of the kirkwood board. The incoming
> messages are passed to user space and filled into the TAP device.
> > So we have a TIPC link between tap0 and eth0. If I send now back and
> > forth  TIPC connectionless messages to the server via the TAP device
> > the kernel print the following messages as soon as the packets are
> > larger then the MTU and TIPC need to reassemble the fragmented
> messages coming from the TAP driver:
> >
> > root@km_kirkwood:~#
> > ------------[ cut here ]------------
> > WARNING: CPU: 0 PID: 94 at lib/refcount.c:28 sock_wfree+0xd8/0xe0
> > refcount_t: underflow; use-after-free.
> > Modules linked in:
> > CPU: 0 PID: 94 Comm: tipc_ping Tainted: G        W         5.10.0-rc4-17824-
> g0fa8ee0d9ab9 #112
> > Hardware name: Marvell Kirkwood (Flattened Device Tree) [<c000f924>]
> > (unwind_backtrace) from [<c000c980>] (show_stack+0x10/0x14)
> > [<c000c980>] (show_stack) from [<c001c27c>] (__warn+0xe8/0xfc)
> > [<c001c27c>] (__warn) from [<c001c2fc>] (warn_slowpath_fmt+0x6c/0xb8)
> > [<c001c2fc>] (warn_slowpath_fmt) from [<c0564b78>]
> > (sock_wfree+0xd8/0xe0) [<c0564b78>] (sock_wfree) from [<c056b730>]
> > (skb_release_all+0xc/0x28) [<c056b730>] (skb_release_all) from
> > [<c056b784>] (kfree_skb+0x20/0x6c) [<c056b784>] (kfree_skb) from
> > [<c056be44>] (skb_release_data+0xc0/0x140) [<c056be44>]
> > (skb_release_data) from [<c056b784>] (kfree_skb+0x20/0x6c)
> > [<c056b784>] (kfree_skb) from [<c0720ea4>] (tipc_recvmsg+0x270/0x3c4)
> > [<c0720ea4>] (tipc_recvmsg) from [<c0560428>]
> > (__sys_recvfrom+0xb0/0x128) [<c0560428>] (__sys_recvfrom) from
> > [<c05604bc>] (sys_recv+0x18/0x20) [<c05604bc>] (sys_recv) from
> [<c0008240>] (ret_fast_syscall+0x0/0x50) Exception stack(0xc1615fa8 to
> 0xc1615ff0)
> > 5fa0:                   00000001 00000000 00000003 00025010 0000fa00
> 00000000
> > 5fc0: 00000001 00000000 00010888 00000123 00000000 00000000
> 49cb0000
> > be939bec
> > 5fe0: 00000000 be93997c 00011114 49d9666c ---[ end trace
> > e7c3a1366c544d79 ]--- ------------[ cut here ]------------
> > WARNING: CPU: 0 PID: 74 at lib/refcount.c:22
> > sock_alloc_send_pskb+0x240/0x258
> > refcount_t: saturated; leaking memory.
> > Modules linked in:
> > CPU: 0 PID: 74 Comm: main Tainted: G        W         5.10.0-rc4-17824-
> g0fa8ee0d9ab9 #112
> > Hardware name: Marvell Kirkwood (Flattened Device Tree) [<c000f924>]
> > (unwind_backtrace) from [<c000c980>] (show_stack+0x10/0x14)
> > [<c000c980>] (show_stack) from [<c001c27c>] (__warn+0xe8/0xfc)
> > [<c001c27c>] (__warn) from [<c001c2fc>] (warn_slowpath_fmt+0x6c/0xb8)
> > [<c001c2fc>] (warn_slowpath_fmt) from [<c0563b40>]
> > (sock_alloc_send_pskb+0x240/0x258)
> > [<c0563b40>] (sock_alloc_send_pskb) from [<c043d500>]
> > (tun_get_user+0x224/0x13f8) [<c043d500>] (tun_get_user) from
> > [<c043e718>] (tun_chr_write_iter+0x44/0x78) [<c043e718>]
> > (tun_chr_write_iter) from [<c012f1bc>] (vfs_write+0x1fc/0x448)
> > [<c012f1bc>] (vfs_write) from [<c012f52c>] (ksys_write+0x54/0xcc)
> > [<c012f52c>] (ksys_write) from [<c0008240>] (ret_fast_syscall+0x0/0x50)
> Exception stack(0xc158bfa8 to 0xc158bff0)
> > bfa0:                   00011244 00000000 00000004 00022098 000005c2
> 00000004
> > bfc0: 00011244 00000000 000108bc 00000004 00000000 00000000
> 49cb0000
> > becf3c94
> > bfe0: 00000000 becf3bb0 49e21ce0 49e223e4 ---[ end trace
> > e7c3a1366c544d7a ]---
> >
> > Kernel version:
> > root@km_kirkwood:~# cat /proc/version
> > Linux version 5.10.0-rc4-17824-g0fa8ee0d9ab9
> >
> > If I simply use ethernet bearer on both sides everything works fine,
> > so I need the TAP interface to be involved to see the problem.
> >
> > It seems that we have a problem in the skb_buf allocation or handling
> > between the TAP driver and the TIPC layer as soon it comes to
> fragmentation.
> > Does anyone have an idea what could cause the problem and how to track
> > this down? Any help is appreciated.
> >
> > Best regards
> > Holger Brunck


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
