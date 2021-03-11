Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B509336AEA
	for <lists+tipc-discussion@lfdr.de>; Thu, 11 Mar 2021 04:55:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lKCQ1-0007uS-RE; Thu, 11 Mar 2021 03:55:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1lKCPy-0007uJ-Qm
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Mar 2021 03:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bePk2HvNxRyx6hjriY/GERG7v9iGDmYL69Qzq5fuUYw=; b=jXZ9ffqnzTlmjbnUEp7dOB2eSs
 THFhtX/tMqupbVWbP8vxnEC0MO4mH2eUCn3nRmFaWQgJaiq4+C4Khc7kzHHystdeM30p9BQy6pzTh
 1imOSyGRFwoGkjgDYbf+Zf3TwT60E9n4i7Z92eLWOwbPc4s//2BdRVYGMwNWKMOwlK5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bePk2HvNxRyx6hjriY/GERG7v9iGDmYL69Qzq5fuUYw=; b=AZcQtCOiGYE2uxone2QZmkP16E
 AjXiIJ3iVnJhbMjjlI7s7t8EoYoWuwY4OAF+RmQPP+9flYtOdx+AKeTv11TQc7aVetPdPktzJyAam
 nz7ZXQpcQuCXF1gq0xV3idSHvoF2LWOtyxvGd5+3mfNvatnfFCrc7GrFqNFu7HaGo5Sg=;
Received: from mail-eopbgr80137.outbound.protection.outlook.com
 ([40.107.8.137] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lKCPo-00025Q-L7
 for tipc-discussion@lists.sourceforge.net; Thu, 11 Mar 2021 03:55:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UtmwiKYcbCup9TyCqTihTP8EKziug+Rpr8XSdX8OaPi+l7wFv7VACgqvJDxbBfJ3/PRpNm9ulu2oI0JUEogwyN94zuMXBGU0mWBj2FZyDWx6yHxNgjWAyewZdVAchw0hMIHJKYPHPD2A6VDbvfq/t3h46FOAFDZ5JZPvJavla/Phm/djRyvgYN0/Xm3ybn0MktW5Ul6X/eX17Y1/SsY2y52tHKvOirJLoikGMa9Jd6bLfdCqxi+fYlvwPF7uCbXkaDufLXGVoFldRNtVn8QqwZS2oRIoU+vW+rHb/djlPtxGDpkyxe08SfNueA0mm2aYJcRyc4kd2HI/Wl0YAZbuvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bePk2HvNxRyx6hjriY/GERG7v9iGDmYL69Qzq5fuUYw=;
 b=HrHLkcDqffN1eM2+P5R8UBKnwJukrO09NRDHJwGrblinP7diqCRuFhuA8nY6+xLsC2aw5/1Oaiud3gsQNC1g/MY8L0qyOy0lKAJjELFaCoB6jVx9x7rZqHLOqUl0rdUSFUb4jqNJCFxoWonNHYEJcJwxKO+q+YOwvmyMBARyoaOhZFahdRY4Wog7jfrDIy2G423pNu/aj49Z2eY3P896u4nZooJltZq8ixaBrnSJTV72KgOotlkTirhDeaTOqjUlmCODY8I89vGFIQpX7xcDvgD+X1IBp53x3IcGmGE9b0NSuqNGvFkLWIRMaRo+ejk1n35k0lhqMIj5M2S1cJGK/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bePk2HvNxRyx6hjriY/GERG7v9iGDmYL69Qzq5fuUYw=;
 b=U96b/H8X4N8w3nKF9cLw74RQxilfFtSFGcAU4eYxbXQfW2TSWSKbjT+hz8mAiu2RRUwNWnZuylkudJHJauWQ3DFOKQyNVpt/Be6gJ9BuWM64Tir3ch2ZuMZGEQQJ/xIVMGxHxvWddKv5tTSR0njGM7rbB5aRTuhVR23VTIN/gfw=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DBAPR05MB6919.eurprd05.prod.outlook.com (2603:10a6:10:18c::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.20; Thu, 11 Mar 2021 03:55:02 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c9f6:2765:5c14:3eb2]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c9f6:2765:5c14:3eb2%3]) with mapi id 15.20.3890.041; Thu, 11 Mar 2021
 03:55:02 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: "jmaloy@redhat.com" <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next v2 00/16] tipc: cleanups and simplifications
Thread-Index: AQHXDSlqJ5jjId+eTE+BAVjxzDstX6p+OjYw
Date: Thu, 11 Mar 2021 03:55:02 +0000
Message-ID: <DB7PR05MB431585A345E235A78F88773C88909@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20210227165542.3781624-1-jmaloy@redhat.com>
In-Reply-To: <20210227165542.3781624-1-jmaloy@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8d0bca1-1574-40e1-e92a-08d8e44172bc
x-ms-traffictypediagnostic: DBAPR05MB6919:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBAPR05MB69192FF2DAB31E8DEC387EED88909@DBAPR05MB6919.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Wj1Zng+RSM0eJ0Auo10U9iayDAEjiYlTAof4m4E95q3e8Kv/Rs4I6KYy5cXaBTrXud/FcAy94YVMrvopEwiL/WTX3Cum0FrTxL0qjZ9AC1n/grx/vJA9wpaeTmh2dTjiPCwOK5vgdNba+U+5LQgglKYBvl+CfeSarb6cTgzy3X5CmHpKSZxzunZ/w0OLfZ3bzE1qsYmYnKaCsa39pbDKvV5WzYyHkhi+3MdSaUFxglnnUlyuc+BSveaYRjbTrgKSmwwfUtwfVimiYOrJ6TRI6BVDubQcaYTaZuLI+eFb1pNuRLRm7Zfng64YVXmnhhSFOyF2pAe2eUgOzCCTARBfNPTMviHe/Mn3p35wgLlfsbBwKtO8F7hSFe0tOX9/Yu+hMO212f87nByhhsrYteMxh+esljuB7IXJa9KriKYrFNA9zDdb7qfaSkbh/PwOwurxzdxIFbHDFB7D/nre8I0wIj/HZ9FmgCtcmJahXJpcCORZAFKEvL6QnWPMibBx7u0WwPAnOh6UKBuQah3+dPCuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39840400004)(346002)(376002)(136003)(366004)(54906003)(55016002)(66946007)(110136005)(6506007)(33656002)(8676002)(53546011)(478600001)(86362001)(186003)(26005)(83380400001)(9686003)(71200400001)(316002)(8936002)(66556008)(66476007)(66446008)(7696005)(64756008)(4326008)(76116006)(5660300002)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?nwu5SIbgx+pNG+51xBjmTBmTTq6yYD7wzU5uNdN/7lQFEIEfjm06Kr4Hbkee?=
 =?us-ascii?Q?v+lt4Fus+pn7wRZJ3aRDTaZyB49NL+yA/Syu2/aiQkET869+khw7/WBy5eYK?=
 =?us-ascii?Q?2z0GW5m5HVO94z0ychJEW5OB38S9ClLAFpumNtyXTkUcaH7vzE3IYZl2B+OU?=
 =?us-ascii?Q?pmz9I+Q0XK+Blz7EVbqo9oj4z3y8AKiicy77TAFnel7yqXVeylpArENQ77LY?=
 =?us-ascii?Q?H7wcWsWtTNuDbMjTUg4x9T7N+MqtAmygGn+zvzjv/Dwx6xaL4SEC6B2swsu8?=
 =?us-ascii?Q?akjmrWxKtPuxJ4QYAbITv2Ojf77MJQxBiuwYik1x1pbIYz4j26FBm8vuKrHD?=
 =?us-ascii?Q?ofCTF7eXpdY2in5c1mjHoFla0vUqjpO9+d6Bqw3A7BATQIQTlJ3wjh2tyLqj?=
 =?us-ascii?Q?53va/40dQfK1Up8FWWoghxu9LUqfk2J4PlCp03RTRt9E503Nl905xnffXvcS?=
 =?us-ascii?Q?6vQ6dkm3Xe6lOQoh0ddGkrMUeIKmMav5/pcFxBWSoq9bFjcn1jQWBaOoyasR?=
 =?us-ascii?Q?XyqrkmSf1/v5QRlg3OVW9Tt4BsMmkpMb9tsRF1DEK1ajKO9BpX6OA4KN1WbE?=
 =?us-ascii?Q?kLw4V5v5yowltiQ+424e0rmCXa92CGT/QlMtyhtMXrcIP22pgl7e6ppT04W0?=
 =?us-ascii?Q?1AU2yZWI+Tg0YdH406wZz8rKxhtKRF85BASct7l9oyjeKrI6Yoai5YVdcOGo?=
 =?us-ascii?Q?qNAWgXR5LrUCH0C+sLsBoqLF5yNg/IVZaotOnoqYmFrkDy8lGY3rOlPmN5P0?=
 =?us-ascii?Q?vmHADOQXNsfw+Mt1QnLwUeusdoC18QdknuAWns8ZzpuPUOXhtiXEGnggiLXN?=
 =?us-ascii?Q?qxV4NM1t2z3HUfY5IKQLKvS2ga0udUArBs6o23x9xQp6r+3PqOu4chLGA5ie?=
 =?us-ascii?Q?WVtjTRheDaSfSfOcGKLX3Z6/N9w4mnWLp2KA+0OvBKNM4/uScdBmSokmHcFh?=
 =?us-ascii?Q?hNgxzCUR0SHrh5lrIbKJ++SnCF90Nzdv+6J+ApLYbpnE0zIF9qny2RaJQ9+/?=
 =?us-ascii?Q?KFpv7d3zrZMde+Z7VR8arDolQ/QO4Xkb/ExoIgJI0YBbT5ZfwXrTBn3gToHs?=
 =?us-ascii?Q?eUT9wDIxM2E+dEWYsWhTnjtppO9rrHoJPJMG3DKaoe3w1WVKYVek46tsr2pp?=
 =?us-ascii?Q?ioe9ngGcYZaxQE+tb6IiWFb1l0S1kAxojKo7yV1AlQJJKYCo9/4x/eAAXVXB?=
 =?us-ascii?Q?tokHPE6baw+gnl0m3horhTtPdOGvNcgMQQuy5oxlUt7w53kz0fieQrGk5k0v?=
 =?us-ascii?Q?b1v3hi5M5zI3aEVMtPjaB7xql21LDT6qoKoKdl66DIzz8FuTJnRK64A6VQV5?=
 =?us-ascii?Q?PiyYGix4+HOWUJP4N/zL16J6?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d0bca1-1574-40e1-e92a-08d8e44172bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 03:55:02.0806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LFk1+HJFV2urP5REGP9189NQvhmlcDQnhKz8xfCi1mBvS368ICNwhObxriDo0uvCClJRD4i4AsRMgq0QZtR7Wbrm8QJa/iHidX03PSumfP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR05MB6919
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.137 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.137 listed in wl.mailspike.net]
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
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lKCPo-00025Q-L7
Subject: Re: [tipc-discussion] [net-next v2 00/16] tipc: cleanups and
 simplifications
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>

-----Original Message-----
From: jmaloy@redhat.com <jmaloy@redhat.com> 
Sent: Saturday, February 27, 2021 11:55 PM
To: tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; xinl@redhat.com; ying.xue@windriver.com; parthasarathy.bhuvaragan@gmail.com
Subject: [net-next v2 00/16] tipc: cleanups and simplifications

From: Jon Maloy <jmaloy@redhat.com>

We make a number of simplifications and cleanups, especially to call signatures
in the binding table. This makes the code easier to understand and serves as a
preparation for an upcoming functional addition.

v2:
   - Eliminated sparse warnings, as per feedback from Hoang
   - Fixed some typos, as per feedback from Tung
   - Fixed some issues noted by Xin:
     #2/16: Moved spinlock.
     #4/16: Added scope check and used tipc_uaddr() in tipc_sk_join()
     #5/16: Eliminated 'addrtype' from struct publication (for now).
     #6/16: 'node number' represented as decimal in some places and
            hex in others. I will fix that in a separate patch later.
     #8/16: Re-introduce use of node2scope(). This function is needed
            later.
     #13/16: This change does not look motivated right now, as stated
             in the commit log, but will be needed later. I kept it,
             just because of the consequences of removing it now and
             having to re-introduce it later.
     #14/16: Made tipc_sub_check_overlap() static, as also reported
             by sparse.

Jon Maloy (16):
  tipc: re-organize members of struct publication
  tipc: move creation of publication item one level up in call chain
  tipc: introduce new unified address type for internal use
  tipc: simplify signature of tipc_namtbl_publish()
  tipc: simplify call signatures for publication creation
  tipc: simplify signature of tipc_nametbl_withdraw() functions
  tipc: rename binding table lookup functions
  tipc: refactor tipc_sendmsg() and tipc_lookup_anycast()
  tipc: simplify signature of tipc_namtbl_lookup_mcast_sockets()
  tipc: simplify signature of tipc_nametbl_lookup_mcast_nodes()
  tipc: simplify signature of tipc_nametbl_lookup_group()
  tipc: simplify signature of tipc_service_find_range()
  tipc: simplify signature of tipc_find_service()
  tipc: simplify api between binding table and topology server
  tipc: add host-endian copy of user subscription to struct
    tipc_subscription
  tipc: remove some unnecessary warnings

 net/tipc/addr.h       |  44 +++++
 net/tipc/msg.c        |  23 ++-
 net/tipc/name_distr.c |  91 +++++----
 net/tipc/name_table.c | 426 +++++++++++++++++++++---------------------
 net/tipc/name_table.h |  63 +++----
 net/tipc/net.c        |   8 +-
 net/tipc/node.c       |  28 +--
 net/tipc/socket.c     | 319 ++++++++++++++++---------------
 net/tipc/subscr.c     |  84 +++++----
 net/tipc/subscr.h     |  12 +-
 10 files changed, 573 insertions(+), 525 deletions(-)



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
