Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFEF2C1051
	for <lists+tipc-discussion@lfdr.de>; Mon, 23 Nov 2020 17:32:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1khElH-0002PR-Ee; Mon, 23 Nov 2020 16:32:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <holger.brunck@hitachi-powergrids.com>)
 id 1khEku-0002OV-CO
 for tipc-discussion@lists.sourceforge.net; Mon, 23 Nov 2020 16:31:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ufhFVw1D+jn4D8F+ODIbPeysA6R9upe5GPXvbRAh/yM=; b=ccUzeih3invFNaSs4YZyaI1IwQ
 gZSqNpDAHuvKaHI+ycghMdqWjPe9LJjNUzjoFBGWwJSZGsYqDqxvj7HbZUFfTMEZppJ2129thPW/O
 OBN1K5rGDaJdMw5Xp8fwBSJaX4dMseJpte6ndFTDe9WhqgKwd1AkTSnIYdy621eOdXgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ufhFVw1D+jn4D8F+ODIbPeysA6R9upe5GPXvbRAh/yM=; b=YOD//mKlGULmKbArk6isPH9gik
 MUujRwduU7Qv9oN4HBNI6+2qN5YBkelAA71fvQneN+sLu42m3DiH8gzla1DxrypcTM9WTxy83blFU
 z1kLmrIwhSxQA7ikgZcJYQHQ0xhfiSncdCIpj0K0M+STc+9Z90sP+HOJCkGfVe/BS/yg=;
Received: from mail-eopbgr60106.outbound.protection.outlook.com
 ([40.107.6.106] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1khEko-00Be9g-JW
 for tipc-discussion@lists.sourceforge.net; Mon, 23 Nov 2020 16:31:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPw+JcJMw8CnVUSXARqJwbBYeJeQM/AWY0VvqtCreTRo6ngfGOuqB76AjfjPhSp0dT/CL08q7l+TESN/oEP0vfot4zbwycmO9BQpHgwUlkj6l/pB2Hk8rBdGJaoRXenY4jYjto4sgZihvVHgNSFKzRdgLcQHPxgFdL5eI3CB6QrNXsr5tYRFt9oJQYxDHk8xgYQMa+XtmjZo3OfKiQD6khTJmLGNrlOwcV0JYEq23dW2Ue55Ch0VxMoyPdadp/IaHHhXZR49+ZmU/Djl0cKjb8wQ20NsDaQ0HKDIYrUQBXsgrCBo+yYZkR7HbHkE4ynsuZ/dj3/LuMFsAfyeDWABGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ufhFVw1D+jn4D8F+ODIbPeysA6R9upe5GPXvbRAh/yM=;
 b=dEgYsIzjn75J5HrIJ/1UEatouI4cOs8WjBXe0ouHSWWeYtpxClQRJvsJbJkAUfNVbzUADd1B2KScm/sZavtORGhJHX1ZNKgw6HjN9FFdz9p5eIMVxLT0VPPo0qvjyYd+ZrjhuEIkjZzJOJho0+hGtTyLhQcwtoelIunYYXfq3GuzZTZZFvW0O9viH3EE0j0nQB90M3tKKUs+qnxQ4rLOowFqEJyK3d//HaXRnAk0MS/lsxym+m3bY94a3cNlvMEgT9FODOAJIvOpT1ZH1tDlBWaQmDsO9fHfJi+VcdcC5Xe1e2MU369rfRlVuj4seL80KaHlcBAUQUDC69EMWRC2Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hitachi-powergrids.com; dmarc=pass action=none
 header.from=hitachi-powergrids.com; dkim=pass
 header.d=hitachi-powergrids.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hitachi-powergrids.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ufhFVw1D+jn4D8F+ODIbPeysA6R9upe5GPXvbRAh/yM=;
 b=aRPMmCZNhOTw/JMrqOUnB3BmQQXFBI1yc9sI24hlUqdnVCKSc1u546WkdYD74pow5PgxF6UtviVWU/RmxlBezFef4PxlJ4YSK4ZjJLM/JkykhXaxh2GQCbj6qYV/3oaV8u59D5u5PNgMcI3atz4lbb58EGyY4MKbNl0DH4zGM3k=
Received: from AS8PR06MB7269.eurprd06.prod.outlook.com (2603:10a6:20b:259::19)
 by AM7PR06MB6550.eurprd06.prod.outlook.com (2603:10a6:20b:11a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Mon, 23 Nov
 2020 15:00:01 +0000
Received: from AS8PR06MB7269.eurprd06.prod.outlook.com
 ([fe80::b828:89b5:b9dd:709f]) by AS8PR06MB7269.eurprd06.prod.outlook.com
 ([fe80::b828:89b5:b9dd:709f%3]) with mapi id 15.20.3589.030; Mon, 23 Nov 2020
 15:00:01 +0000
From: Holger Brunck <holger.brunck@hitachi-powergrids.com>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: refcount warnings with TIPC in combination with a TAP device and
 fragmented messages
Thread-Index: AQHWvn3mi7mZVfwgkkSaH/lh1J9LoanVy+2AgAAE/kE=
Date: Mon, 23 Nov 2020 15:00:01 +0000
Message-ID: <AS8PR06MB726986B9C4A672C4640D8064CCFC0@AS8PR06MB7269.eurprd06.prod.outlook.com>
References: <AS8PR06MB7269EEC3A0C96ED05DE19B29CCE00@AS8PR06MB7269.eurprd06.prod.outlook.com>,
 <999af682-2051-8e01-d417-ad04e1f442fc@redhat.com>
In-Reply-To: <999af682-2051-8e01-d417-ad04e1f442fc@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none
 header.from=hitachi-powergrids.com;
x-originating-ip: [193.17.201.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8dc50ac6-ec65-4012-1c59-08d88fc07436
x-ms-traffictypediagnostic: AM7PR06MB6550:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR06MB65503DBA7D85340D0B25BC5ACCFC0@AM7PR06MB6550.eurprd06.prod.outlook.com>
x-abb-o365-outbound: ABBOUTBOUND1
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zZJhEj47h1KMFidlyghIEB1h4kzgU1lR9SCgJ6B5/yhxJZLjbC81HnTQ8R7UaNfaPXp5tQSgifPEyK5WuFKj7qMXlCN/EK7NwzTGG1A8sWj5W8+mFn7NKMqj95C+fKbsH2z1d2zWCAj/eZcJbGbcm4v4iUESWXGbZei5Lf//i1hA8OXWaR5lBM5D3R7rvnJ04VywCqqMzQ/0K+Hn2el31KiE2WpML6XtveHx63NnUGOtv24yqV2Cb28MgxWrTwwva4ymOQwOM89vd2l24CMMiP/S2dPsJX7uVWDPP1nQIFZDtHD1NHSUvuAn4Sa8FOGd6ZQzEnS0Gcqo7D3gLJqvUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR06MB7269.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(71200400001)(15650500001)(9686003)(5660300002)(8936002)(55016002)(4326008)(33656002)(107886003)(8676002)(45080400002)(86362001)(76116006)(66446008)(66476007)(478600001)(66556008)(66946007)(64756008)(2906002)(44832011)(54906003)(6506007)(316002)(110136005)(83380400001)(186003)(7696005)(26005)(53546011)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: otjtLhUQUuCSNnfZztOi59hQcz0Zx1CA6JbSSGiWkV0wB011px3SgoEswL6ARc+pT7+c0g1ek4fc4CNl8ZJrX4D80LYamEyDX2Pir29Jy6bozqiZfqCWsNN8neVft/1cK0K6lWrKfGk2uRF1l+7iNR2UaA7jbbILNAKCjyQFrA84A6T75jyOQhb1zZx3TgGc45da4UJuGAOvbtSZIP+/5r8mkxdrhvKhL0qviUXbjicIzC8ls0PGB5WBQKG5b/Zcvx8tQmboSVHopdnitSZdtoSyiRzG/ZfweDM4zApvAI7ETdcZ0mcfXJwzk8Br+DWU7ijZgzs+sL5ilfdusVpntvErD9yzXwYuZ9FY+r0yhAp5Ip6HH16B0j5Mq94qtFMmv4uWHNu+3UUwj3EuKxChtcXbxATSmH0cyWWAZ9AE88sDXuo6VdLEc7pzbrJF5OG4JI+etS3Ob8BxukNwFzfrGQLfU9uOQQrBf/lZX6+iyiGNUfgp5bNRbFoDzDFaFFYB6kqH1uok1BraYqqISJMlBocSxSW8dHOB90LYtJGL0P+UXajXzR3xnHo4YzSY1P1nz1c3nXan+UwHSRNXt1vzJ8Z1EQ/FiW4ipDKGSJC2yRYid91eootThXR0yYuOWSl3aT5Awg7C7ifYlNl18VACNvBEXIKP8RE12Q03JrdV4wkIHL2qDqlY+tqEAHySUbEMbFSuFnH4dusSw4D07w9Oq1n4va4fT+M3UIas6nE2N2/SZ79N0d13WZ+Af2zHQSMW3aTfX4imsYmDcbeCHaYu7jLN1o6J9i2ObO9fgQ2OZpPd8zLiQUEHherznLpNKSkQ3IoSRtBDDPukTi5hsVldmypDr3lcqohE1soQikl6WCJ1mbfCNmfAgEV9eGdFE6clNAtSdTI/T4rNrp68lGXFDQ==
MIME-Version: 1.0
X-OriginatorOrg: hitachi-powergrids.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR06MB7269.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dc50ac6-ec65-4012-1c59-08d88fc07436
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2020 15:00:01.8264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7831e6d9-dc6c-4cd1-9ec6-1dc2b4133195
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oebwphEIkJZE56hWilDh2zxVVB9KR+RUJrZt2gA7t68P5VdVRkmEydD1tAPKw4t0N/1EYoIARYktf4lKtLdHj3346MrMiQOIcM7v+gU75hmZhm2qBvTewfh/4HislLQx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR06MB6550
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.106 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1khEko-00Be9g-JW
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
Cc: Matteo Ghidoni <matteo.ghidoni@hitachi-powergrids.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,
thanks.  To add some more information I was now using ftrace to see the cal=
l stack within TIPC/TAP and the related
skb operations to narrow this down. Maybe someone more familiar with the re=
ceive flow in the TIPC stack sees already something suspicious. =


Here is the trace starting from our program (main) sending the first fragme=
nt to the TAP device until the first WARN_ON sequence
is written out when our client (tipc_ping) is receiving the reassembled pac=
ket:

     main-91      ....    84.4851: tun_chr_write_iter <-vfs_write          =
    <-- first fragment arrives
     main-91      ....    84.4851:   tun_get_user <-tun_chr_write_iter
     main-91      ....    84.4851:     sock_alloc_send_pskb <-tun_get_user
     main-91      ....    84.4851:       skb_set_owner_w <-sock_alloc_send_=
pskb     <-- refcount add
     main-91      ....    84.4851:     skb_put <-tun_get_user
     main-91      ....    84.4852:     skb_copy_datagram_from_iter <-tun_ge=
t_user  <-- copy data
     main-91      ....    84.4852: tipc_l2_rcv_msg <-__netif_receive_skb_on=
e_core
     main-91      ....    84.4852:   tipc_rcv <-tipc_l2_rcv_msg
     main-91      ...2    84.4852:     tipc_link_rcv <-tipc_rcv
     main-91      ...2    84.4852:       tipc_link_advance_transmq <-tipc_l=
ink_rcv
     main-91      ...2    84.4852:         kfree_skb <-tipc_link_advance_tr=
ansmq
     main-91      ...2    84.4852:           skb_release_all <-kfree_skb
     main-91      ...2    84.4852:             skb_release_head_state <-skb=
_release_all
     main-91      ...2    84.4852:             skb_release_data <-skb_relea=
se_all
     main-91      ...2    84.4852:               skb_free_head <-skb_releas=
e_data
     main-91      ...2    84.4852:           kfree_skbmem <-kfree_skb
     main-91      ...2    84.4852:         kfree_skb <-tipc_link_advance_tr=
ansmq
     main-91      ...2    84.4852:           skb_release_all <-kfree_skb
     main-91      ...2    84.4852:             skb_release_head_state <-skb=
_release_all
     main-91      ...2    84.4852:             skb_release_data <-skb_relea=
se_all
     main-91      ...2    84.4852:               skb_free_head <-skb_releas=
e_data
     main-91      ...2    84.4852:           kfree_skbmem <-kfree_skb
     main-91      ...2    84.4852:       tipc_data_input <-tipc_link_rcv
     main-91      ...2    84.4852:       tipc_link_input <-tipc_link_rcv
     main-91      ...2    84.4852:         tipc_buf_append <-tipc_link_input
     main-91      ...2    84.4852:           skb_pull <-tipc_buf_append
     main-91      ...2    84.4853:       tipc_link_advance_backlog <-tipc_l=
ink_rcv
     main-91      ....    84.4853:     kfree_skb <-tipc_rcv
     main-91      ....    84.4854: tun_chr_write_iter <-vfs_write       <--=
- second fragment
     main-91      ....    84.4854:   tun_get_user <-tun_chr_write_iter
     main-91      ....    84.4854:     sock_alloc_send_pskb <-tun_get_user
     main-91      ....    84.4854:       skb_set_owner_w <-sock_alloc_send_=
pskb
     main-91      ....    84.4854:     skb_put <-tun_get_user
     main-91      ....    84.4854:     skb_copy_datagram_from_iter <-tun_ge=
t_user
     main-91      ....    84.4854: tipc_l2_rcv_msg <-__netif_receive_skb_on=
e_core
     main-91      ....    84.4854:   tipc_rcv <-tipc_l2_rcv_msg
     main-91      ...2    84.4854:     tipc_link_advance_transmq <-tipc_lin=
k_rcv
     main-91      ...2    84.4854:     tipc_data_input <-tipc_link_rcv
     main-91      ...2    84.4854:       tipc_link_input <-tipc_link_rcv
     main-91      ...2    84.4854:         tipc_buf_append <-tipc_link_input
     main-91      ...2    84.4854:           skb_pull <-tipc_buf_append
     main-91      ...2    84.4854:           skb_try_coalesce <-tipc_buf_ap=
pend
     main-91      ...2    84.4854:         tipc_data_input <-tipc_link_input
     main-91      ...2    84.4854:       skb_queue_tail <-tipc_data_input
     main-91      ....    84.4854:     tipc_sk_rcv <-tipc_rcv
     main-91      ....    84.4854:       tipc_sk_lookup <-tipc_sk_rcv
     main-91      ...1    84.4854:       tipc_sk_filter_rcv <-tipc_sk_rcv
     main-91      ...1    84.4854:         sock_wfree <-tipc_sk_filter_rcv
     main-91      ...1    84.4854:           tun_sock_write_space <-sock_wf=
ree
     main-91      ...1    84.4854:         tipc_data_ready <-tipc_sk_filter=
_rcv
     main-91      ....    84.4855:         tipc_node_distr_xmit <-tipc_sk_r=
cv
     main-91      ....    84.4855:     kfree_skb <-tipc_rcv
tipc_ping-97      ....    84.4855: tipc_poll <-sock_poll                <--=
 tipc_ping receives the packet
tipc_ping-97      ....    84.4859: tipc_recvmsg <-__sys_recvfrom
tipc_ping-97      ....    84.4859:   tipc_wait_for_rcvmsg <-tipc_recvmsg
tipc_ping-97      ....    84.4859:   tipc_sk_set_orig_addr <-tipc_recvmsg
                                                   skb_copy_datagram_msg
tipc_ping-97      ....    84.4859:       skb_copy_datagram_iter <-tipc_recv=
msg
tipc_ping-97      ....    84.4859:   kfree_skb <-tsk_advance_rx_queue
tipc_ping-97      ....    84.4859:     skb_release_all <-kfree_skb
tipc_ping-97      ....    84.4859:       skb_release_head_state <-skb_relea=
se_all
tipc_ping-97      ....    84.4859:       skb_release_data <-skb_release_all
tipc_ping-97      ....    84.4859:         kfree_skb <-skb_release_data
tipc_ping-97      ....    84.4859:           skb_release_all <-kfree_skb
tipc_ping-97      ....    84.4859:             skb_release_head_state <-skb=
_release_all
tipc_ping-97      ....    84.4859:             sock_wfree <-skb_release_hea=
d_state
tipc_ping-97      ....    84.4859:               warn_slowpath_fmt <-refcou=
nt_warn_saturate  <--- first WARN_ON dump
tipc_ping-97      ....    84.4897:               __warn <-warn_slowpath_fmt
tipc_ping-97      ....    84.5227:               dump_backtrace <-show_stack

  =

Best regards
Holger Brunck


From: Jon Maloy <jmaloy@redhat.com>
Sent: 23 November 2020 15:25
To: Holger Brunck <holger.brunck@hitachi-powergrids.com>; tipc-discussion@l=
ists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Cc: CC: Tung Nguyen <tung.q.nguyen@dektech.com.au>; CC: Xin Long <lucien.xi=
n@gmail.com>; Matteo Ghidoni <matteo.ghidoni@hitachi-powergrids.com>
Subject: Re: refcount warnings with TIPC in combination with a TAP device a=
nd fragmented messages =

=A0



Hi Holger,
We will look into this. It is a new setup for us, so it has to be
prepared first.

///jon


On 11/19/20 9:33 AM, Holger Brunck wrote:
> Hi all,
> we have currently problems with TIPC in combination with a TAP interface =
and fragmented
> messages. We have a Kirkwood board getting TIPC ethernet packets from a t=
hird party stack
> in user space which we fill into a TAP device to pass this packets to the=
 kernel. On the
> remote side we have another board with a physical ethernet device. After =
migrating to
> kernel 5.4 we saw kernel crashes as soon as we send fragmented TIPC messa=
ges via
> this link. Before the kernel crash we see "refcount_t: underflow; use-aft=
er-free"
> warnings coming either from the TIPC or the driver/net/tun.
> For smaller packets everything work fine. To track this down we wrote a s=
mall
> test program which receives raw ethernet packets in user space and send t=
hem back to
> kernel space via a TAP interface, to be able to reproduce it with a mainl=
ine kernel only.
> So instead of a link e.g. eth0:eth0 we have a link from eth0:tap0.
>
> I now tested this on latest mainline kernel and still see warnings coming=
 from the kernel, but
> not the crash.
> So in the testcase we have TIPC server running on a remote board having a=
 ethernet bearer
> on a interface. The ethernet interface is connected to the ethernet inter=
face of the
> kirkwood board. The incoming messages are passed to user space and filled=
 into the TAP device.
> So we have a TIPC link between tap0 and eth0. If I send now back and fort=
h=A0 TIPC connectionless
> messages to the server via the TAP device the kernel print the following =
messages as soon as
> the packets are larger then the MTU and TIPC need to reassemble the fragm=
ented messages coming
> from the TAP driver:
>
> root@km_kirkwood:~#
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 94 at lib/refcount.c:28 sock_wfree+0xd8/0xe0
> refcount_t: underflow; use-after-free.
> Modules linked in:
> CPU: 0 PID: 94 Comm: tipc_ping Tainted: G=A0=A0=A0=A0=A0=A0=A0 W=A0=A0=A0=
=A0=A0=A0=A0=A0 5.10.0-rc4-17824-g0fa8ee0d9ab9 #112
> Hardware name: Marvell Kirkwood (Flattened Device Tree)
> [<c000f924>] (unwind_backtrace) from [<c000c980>] (show_stack+0x10/0x14)
> [<c000c980>] (show_stack) from [<c001c27c>] (__warn+0xe8/0xfc)
> [<c001c27c>] (__warn) from [<c001c2fc>] (warn_slowpath_fmt+0x6c/0xb8)
> [<c001c2fc>] (warn_slowpath_fmt) from [<c0564b78>] (sock_wfree+0xd8/0xe0)
> [<c0564b78>] (sock_wfree) from [<c056b730>] (skb_release_all+0xc/0x28)
> [<c056b730>] (skb_release_all) from [<c056b784>] (kfree_skb+0x20/0x6c)
> [<c056b784>] (kfree_skb) from [<c056be44>] (skb_release_data+0xc0/0x140)
> [<c056be44>] (skb_release_data) from [<c056b784>] (kfree_skb+0x20/0x6c)
> [<c056b784>] (kfree_skb) from [<c0720ea4>] (tipc_recvmsg+0x270/0x3c4)
> [<c0720ea4>] (tipc_recvmsg) from [<c0560428>] (__sys_recvfrom+0xb0/0x128)
> [<c0560428>] (__sys_recvfrom) from [<c05604bc>] (sys_recv+0x18/0x20)
> [<c05604bc>] (sys_recv) from [<c0008240>] (ret_fast_syscall+0x0/0x50)
> Exception stack(0xc1615fa8 to 0xc1615ff0)
> 5fa0:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 00000001 0000=
0000 00000003 00025010 0000fa00 00000000
> 5fc0: 00000001 00000000 00010888 00000123 00000000 00000000 49cb0000 be93=
9bec
> 5fe0: 00000000 be93997c 00011114 49d9666c
> ---[ end trace e7c3a1366c544d79 ]---
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 74 at lib/refcount.c:22 sock_alloc_send_pskb+0x240/0=
x258
> refcount_t: saturated; leaking memory.
> Modules linked in:
> CPU: 0 PID: 74 Comm: main Tainted: G=A0=A0=A0=A0=A0=A0=A0 W=A0=A0=A0=A0=
=A0=A0=A0=A0 5.10.0-rc4-17824-g0fa8ee0d9ab9 #112
> Hardware name: Marvell Kirkwood (Flattened Device Tree)
> [<c000f924>] (unwind_backtrace) from [<c000c980>] (show_stack+0x10/0x14)
> [<c000c980>] (show_stack) from [<c001c27c>] (__warn+0xe8/0xfc)
> [<c001c27c>] (__warn) from [<c001c2fc>] (warn_slowpath_fmt+0x6c/0xb8)
> [<c001c2fc>] (warn_slowpath_fmt) from [<c0563b40>] (sock_alloc_send_pskb+=
0x240/0x258)
> [<c0563b40>] (sock_alloc_send_pskb) from [<c043d500>] (tun_get_user+0x224=
/0x13f8)
> [<c043d500>] (tun_get_user) from [<c043e718>] (tun_chr_write_iter+0x44/0x=
78)
> [<c043e718>] (tun_chr_write_iter) from [<c012f1bc>] (vfs_write+0x1fc/0x44=
8)
> [<c012f1bc>] (vfs_write) from [<c012f52c>] (ksys_write+0x54/0xcc)
> [<c012f52c>] (ksys_write) from [<c0008240>] (ret_fast_syscall+0x0/0x50)
> Exception stack(0xc158bfa8 to 0xc158bff0)
> bfa0:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 00011244 0000=
0000 00000004 00022098 000005c2 00000004
> bfc0: 00011244 00000000 000108bc 00000004 00000000 00000000 49cb0000 becf=
3c94
> bfe0: 00000000 becf3bb0 49e21ce0 49e223e4
> ---[ end trace e7c3a1366c544d7a ]---
>
> Kernel version:
> root@km_kirkwood:~# cat /proc/version
> Linux version 5.10.0-rc4-17824-g0fa8ee0d9ab9
>
> If I simply use ethernet bearer on both sides everything works fine, so I=
 need
> the TAP interface to be involved to see the problem.
>
> It seems that we have a problem in the skb_buf allocation or handling bet=
ween
> the TAP driver and the TIPC layer as soon it comes to fragmentation.
> Does anyone have an idea what could cause the problem and how to track th=
is
> down? Any help is appreciated.
>
> Best regards
> Holger Brunck


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
