Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D192C2277
	for <lists+tipc-discussion@lfdr.de>; Tue, 24 Nov 2020 11:05:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1khVC5-0007v8-6N; Tue, 24 Nov 2020 10:05:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1khVC3-0007v0-9z
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Nov 2020 10:05:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IO2aA0fTyNrebLt/BziT+UQ8woqryAXKv0pB/3QDe6Q=; b=epYYyt7Q12Eq3sG31tz6F4UnW1
 Z7IFa/2sQq7IerCLIYQQZLuvbdAH0zfVyPZD8+ogtc1+VI/cS+P4rDsk7Y+kMnW6EYYywTXRILxA9
 4EZ8tGyTaWGCoRAgxoy0xEBH1HKFxoPqN6JrhSTTz+kwUxcDvPCcn9kPF7osaBNKvBfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IO2aA0fTyNrebLt/BziT+UQ8woqryAXKv0pB/3QDe6Q=; b=c1RxXa+DZsiwzFKr1Q50Tdv1Tg
 NAxah+0ONR1IFKW6yOU6eW29ZydLUl/VtMOFcFilvrKmxyxXpRgM8v9L4vjt1jMerO4a9BWOU1b7h
 +QFE9WuKX0PNk979WfjBgdNsOmK0pp4HPq6x8xkll9PFn/UX4RQRiIsS0EbxMWVNDoEE=;
Received: from mail-eopbgr60090.outbound.protection.outlook.com ([40.107.6.90]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1khVBu-002186-Lx
 for tipc-discussion@lists.sourceforge.net; Tue, 24 Nov 2020 10:05:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RX3lLQHYeJup9+YkAQacBI4LJe1PyUMx3R0OPyH5p1FMsfNjDwL+cccEZvBNELOV83l+bnual4ql4XW0KFpuqrCqM/aAO0Xv0IiaVL83ffqbgFDl4w6eeABxG2TLwqQTWE+b+YFYrC1ycWTPfd4Jan42h7z9gq3u3Yx4eZKh+hORouc3U9ijOrYpQInte1jCEhwS49tPY356SQRl2JmqmE/z/J5XPTmbe370mv8R6BhOlu2elLDwypmzGqAakf/8yrW2TUc3C4hcVK+iSYKAEvI0/BmarP5ezRFBYW7E9Z/vC5qKo7zmb8ozJnJiKOypuRKtlaBUbGBMhriEHv2x7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IO2aA0fTyNrebLt/BziT+UQ8woqryAXKv0pB/3QDe6Q=;
 b=FRB203fysgHrJ6JqFjTsKvTQSHTi0+2fE57zterI4I3xAO/n7L4fEgEXtlGf3ZBpDCJ66fL1fbLTDwoTi2o/za5y0jvzct4wTJRhJvuMMNAD2uEUQs7wPoasRjxfyBBiU1d2FMcqb1BFZQCjI689BWTEerkeDG1GbNLOfH+LybffEWJpCHLwl3A5k3qiUEC+UTNZU8BWNKueMdk9QVKmI35NVAEpGp4B7QW4xz0WbfcByo6JWNxve/j+5SgeaRG2lNXZNNXQOQEaf0cXQujLpt5cOlrYQ6trUYHmXLtdS763fJUgRhO5myIuSK5aQbW5tO95MdWFXkDShbovt+0maw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IO2aA0fTyNrebLt/BziT+UQ8woqryAXKv0pB/3QDe6Q=;
 b=jXRwswVE5iKNHMEQMOI93WHs/xnccDAw6DqWsOH8adtx4wfJD80gBhzcZifa2ci+VpgqqQBq85M82K9uVLeraGI5L2zdB/fSfrFWJZe+JKxkb7kVLbLEvPMYZg+F+9xLIT67SyvWjLmQfNzq7/ULIRXujci4a7DsIje/4nwlDVs=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB3PR0502MB3995.eurprd05.prod.outlook.com (2603:10a6:8:10::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3589.20; Tue, 24 Nov 2020 10:04:39 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::fc7c:55e3:fd76:b5b6]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::fc7c:55e3:fd76:b5b6%6]) with mapi id 15.20.3589.030; Tue, 24 Nov 2020
 10:04:39 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Holger Brunck <holger.brunck@hitachi-powergrids.com>
Thread-Topic: refcount warnings with TIPC in combination with a TAP device and
 fragmented messages
Thread-Index: AQHWvn3mi7mZVfwgkkSaH/lh1J9LoanVy+2AgAAE/kGAAUQOUA==
Date: Tue, 24 Nov 2020 10:04:39 +0000
Message-ID: <DB7PR05MB4315EFBDE5F6005390E8FF6E88FB0@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <AS8PR06MB7269EEC3A0C96ED05DE19B29CCE00@AS8PR06MB7269.eurprd06.prod.outlook.com>,
 <999af682-2051-8e01-d417-ad04e1f442fc@redhat.com>
 <AS8PR06MB726986B9C4A672C4640D8064CCFC0@AS8PR06MB7269.eurprd06.prod.outlook.com>
In-Reply-To: <AS8PR06MB726986B9C4A672C4640D8064CCFC0@AS8PR06MB7269.eurprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: hitachi-powergrids.com; dkim=none (message not signed)
 header.d=none; hitachi-powergrids.com;
 dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49de88a0-b2f3-4eef-2363-08d890605b61
x-ms-traffictypediagnostic: DB3PR0502MB3995:
x-microsoft-antispam-prvs: <DB3PR0502MB3995CF1E33DA5C900E15531388FB0@DB3PR0502MB3995.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +iQPtZhw/CmQOQtMcA3AiXw4ozXWn+9a9c59DAV6JsbQ/E6aHNS4h1UyfH1cpK+LGiWHM9SGAyF5n5RMr5uHK2MuoAa2M7NOFG/O0Gy8Y2HUmKNier/WEO65XKAR6yIBNtfnIjaKE9PCc9c3+XYSMLNAGms5DxtbFFeScpXF/w8O51gMidDNj0t/gvblv6D+xQw/K61tdllJc1hqZPPOW4f2DJ4Jwrk6s/uuNgPtCQSCUKeVHxtvdORYdCraA/cKLvildMDu1HXprvonmwqGozHOOVn+Xxi61RHrFpJL09sbNSEIlZWMyFGetJfxFA878ufEyrg1NjJQ/XuVFNQcwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39850400004)(346002)(136003)(396003)(366004)(316002)(54906003)(8676002)(26005)(2906002)(15650500001)(53546011)(186003)(9686003)(8936002)(83380400001)(6506007)(33656002)(45080400002)(478600001)(6916009)(7696005)(4326008)(52536014)(66446008)(66476007)(5660300002)(76116006)(71200400001)(86362001)(66946007)(66556008)(55016002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QUcRtFyOuxYF/Vb0csdN6waMqKS4906oR0ZZnOMJG7n8e1Oiw5JPnCyXFZVZqbWP+6ppcT9jD+JC/dxZmA3eKVRWmX6aeKR5NQhEiYyqW1mesEFx+MbhvNypBv+IiFSdeyUdSAKPqQePYDavlsxqf2qqeRaLAYUTX53WdL75MHERmxGUKIgz5Ftms+zZtBms3va3IsXwCS/lHmC1K3xM1aPpHWDvtIIatehbH0o1rZj5VdHTc9NNxUyMh/N9nDkKIDQv1gBm1f4kYqIx9e1VDhKq9+4G7ThHh/8gK8Pfj3WgXq7pFNwZ0v1Ge5tW/THT04Y4qjpedx7TmY6qsR3ay2t5W2jXf1Sp9usOppavJ/YawY9AvWRjK5BIrdQN82GCmfBYbRKg6fWwgQo/6F76Gf7KN6hxSlDNTjnuJfL4DQzEhAkSlurj/IdkM/EvL7xnb0k+EOG7RW85y/UC7Y0g1WZyHSaHgCxkoINIp1MDA/NE7/DYNcfkcE6yC/AGR5I9GBcx2xanwX5WNL8IpKWYB0nmyksuQr/KHumufJmqmakDy38N84U1WL8sqA5O1rTiYTZCeKMJO3ozAHJush1remd6d0v/Ec0FFGTpDP+Qa/HL5Z5ZpR7r+mes1W0dbC+0BZyeBce5DUFSL+Tde3PEfe7pR1fMmhL0JOtfXTalA9tIqHi9dHeBaoUbW700HVM0Sn1xK5WPXQaRGch+Gs7T5rgpszKwJXllXpJqtCxzteBiLnYOw5L/UCrmcVjqtazVvp9z+6uNCpHzI9ngUIHDmdvDwJhDBa8rTrklViqisK6VDaphMT2sFlnj+TEZFZrfEunGG94bWsKtX23z4AKXQCGqnvHmxFXuLRlZaMurTZpd/eWl1tLjdG7Ay8tUARJakjZKbCvR+4dGnUOeomo62A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49de88a0-b2f3-4eef-2363-08d890605b61
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2020 10:04:39.5249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Us4voUiAgE4hzmsajyEtt3qoO7JqVMN84ljeEDvZYd8P6/0f3wHO+g80cafZWpDOUH94xkl+m5zSesPh4VHRognyCa2C4/5wCgAv9mZlvME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB3995
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.90 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.90 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1khVBu-002186-Lx
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Holger,

You said you met this stack trace after migrating to "kernel 5.4". Can you =
give us a full version ?

Thanks.
Tung Nguyen

-----Original Message-----
From: Holger Brunck <holger.brunck@hitachi-powergrids.com> =

Sent: Monday, November 23, 2020 10:00 PM
To: Jon Maloy <jmaloy@redhat.com>; tipc-discussion@lists.sourceforge.net
Cc: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; CC: Xin Long <lucien.=
xin@gmail.com>; Matteo Ghidoni <matteo.ghidoni@hitachi-powergrids.com>
Subject: Re: refcount warnings with TIPC in combination with a TAP device a=
nd fragmented messages

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
