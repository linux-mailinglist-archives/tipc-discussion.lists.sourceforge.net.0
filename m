Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B02AA3D316A
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Jul 2021 03:56:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6kPv-0004tY-3O; Fri, 23 Jul 2021 01:55:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1m6kPs-0004tS-Iv
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 01:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jnd0QKeSSLfbevst3RfZWZuFzTh6El/KhGkNzKKD4T4=; b=QuZj1+dgynmKKKaym8SlhTVGJU
 z90B7Y5Munl7yVR4B3WuKocEaxeKf2bxdRtHsZd//F1aH/rvIzwj4YyrQbPTPWIAoLGgYBeTxeMun
 BRIjtGnBT0+qIGPq0qoJ0aIn+qMUzd+ZvnvNdnc/F5Fnd6RyNEoOkPwvSL/NEQ+L1FoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jnd0QKeSSLfbevst3RfZWZuFzTh6El/KhGkNzKKD4T4=; b=Sz6S+fe3925bvJwnCSVBxgFf8l
 pFGfBo7SO19OgnahEEL3eHZ+QnBr4AXGp+0gAf8/xEw7k2OumGWtl4intJOTzoGrytf2HKagxG5Se
 U1OJMX5V1q4a2g4hAcaZGdSd0mnW8QkLc9jkfdkCqDgIOP9h8v7pu1bhzex26y/H5vEY=;
Received: from mail-eopbgr60090.outbound.protection.outlook.com ([40.107.6.90]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6kPh-00HObZ-9l
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Jul 2021 01:55:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zsu7PacThzxZQ3ygiBBEjY0hhcWwMUcKBzKMSjP4oFkXmySJBQXLUBBr30Kh3RKOyaTPxJqEvJ+Addlg1p1twej1dzl3soxA7ga+gJtMpzIVPiXO3I4icMEmXbF4fXh444joe5Vtg/h5LKALqYRyMVusWD2HRHupfZtOuFhwBvLCEi9x3Ir2863cLoAnCZzvmivMtqduvELZyTRoVTwgAAO9KRbX/73h+dTiiE3flTQpOeGzD2sCNwne/3UdAmQ+DBs9MkQH/2s0LNGQJ2pJGpCA8hOcFugbtEbc1LZalWFbJ3hlNgRmHWkNqa6nowqO4S1BvEg7FjmcAWiKI/NaGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jnd0QKeSSLfbevst3RfZWZuFzTh6El/KhGkNzKKD4T4=;
 b=hfHWE2eHa1TpGJJ2ks3BXxTeEYyUne+Vg33d46Oa70Ni17LHGXvVSx5GG6o81UXDC9q+aTTx76VqLHI3yb769uMEWkiV6lzD5KhaFZVEvOxsC3al6t5w7aS9W/XaFGgu4LcKFy+KdSU8ZgRcp4Tib9F/XL9Fe2EpvOL+t1m1Ymt9/UObskt+qaT+TkyzhvTLQ8duiiESQfZKqdGm6Hn7HoaGBsuaDbyGqS4zBTHPn03evtFpVUdbuX74lqLWLJsyJbjwqC5GRdQpKdPayvNHg+5oT9VmoX2OkRrjyhIyRqunf7E19igEgo9QbVzunh2Jgb+O2CkG2sgL5lTlN+mZWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jnd0QKeSSLfbevst3RfZWZuFzTh6El/KhGkNzKKD4T4=;
 b=pZ648ivDou452JUDSfDHvcD3clyVo1E9r1+UpdjIVA1Q2TNMMWxwvDV/GbU6NnMII8S3fDLxatLErokdebdnR+j7qf/8dU/UZwXBqWUfuWdqe27f71Tslbgpf6TT4Ry3802FugPxbSk6ygqBHRDsLvUbDK6vD0xyFRGebsrrl8U=
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR0501MB2192.eurprd05.prod.outlook.com (2603:10a6:800:2a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.29; Fri, 23 Jul
 2021 01:55:36 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584%5]) with mapi id 15.20.4352.028; Fri, 23 Jul 2021
 01:55:36 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Xin Long <lucien.xin@gmail.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [syzbot] KASAN: use-after-free Read in tipc_recvmsg
Thread-Index: AQHXfD/T0A9wI211VEujlwJAeyD5zatP0Yjg
Date: Fri, 23 Jul 2021 01:55:36 +0000
Message-ID: <VE1PR05MB7327FF783D6236E5AE98B339F1E59@VE1PR05MB7327.eurprd05.prod.outlook.com>
References: <00000000000017e9a105c768f7a0@google.com>
In-Reply-To: <00000000000017e9a105c768f7a0@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1a7c3d2-bf26-45c8-944f-08d94d7cf6ed
x-ms-traffictypediagnostic: VI1PR0501MB2192:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0501MB219239CAEEC550A8A43A5B77F1E59@VI1PR0501MB2192.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c1MxeqEUjL3gN/+aFhT9myOLcICQ0E9GMBMuS9YeEJ9BMrG6ugFY5gspfEWsQq8rnQI/dHhxY/WnfyE05DZqb0btrffjcx9suPmd9295uOrPzezmvXDUkp0ahrq9EijnLIanKY+DKxZJYzPh+i1ecZApLEHC+gtZ3dgLgXLwgUqMy8Zqt6+93/O3CAFUPZ2vx/lUtIAHArYwY3BVr8OeLPh2P0x57uNBiFSFAIclQ15G7zSPifPrL4wBn+L96kFuPMxwDnPvqIgrqx4flPpo6QUkUodxhmhv6jN3ZpZfzcWjYe1cjsz09mCx6OClhd6BsyMVA9c2hhbQhrB6BfZX47DqsmN8mkyvQTXKIZNMpQh3uQkUgli3wa+k9d9kcbCiqoOiAzoPjdg0EH5jpYDSummHFGPZPPpbkSyADyY+q1p8sRJPfBwvSFZJXKBjIqgZVoEzHfh7xEJWEfRA6uXqw4B7H332RQFUcNE4A1JIa4ioqynfO5nWiD0o/wnTC1nkdmxDYIa2MuM9FmdNLPwlS6IsjxJQ/093aTA5EoCbZ8irfL1OHwPJzkt6/vm5+3/4+AHVkDMHoI+OGCTn+mxJXlr3Ccds7qJeNlPj5EVA03w5N8TGrNAqmTXCf8tKvYIz+YwciTilaY29F4G9upBkpo2L+FPUC/GpALpnmng5VD6x9bHBlgjWl9ZnNyxzAJTdw/4CJKu0UiL1Zrt5HUCT70NlyO3SzOrXCRmKJhvR2HBv3R//9chkLvXG67bKv+PCK96NuDFTSDU23o1HXl5G02pC34GV2Pv/AP7jfRIlaUnzI6YKqzzMEqq5IinT8hqp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39840400004)(136003)(396003)(346002)(4326008)(110136005)(33656002)(71200400001)(86362001)(54906003)(7696005)(8936002)(478600001)(83380400001)(2906002)(8676002)(52536014)(186003)(66556008)(38100700002)(66476007)(9686003)(66946007)(122000001)(55236004)(55016002)(316002)(66446008)(53546011)(76116006)(64756008)(5660300002)(966005)(26005)(6506007)(99710200001)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUhNS2padTJsbStqeXAxa2M5ajdrcGg2bDNDdnMyUWZnRjRFUndGRnk4bk45?=
 =?utf-8?B?Uk5HZnlJRE5jaEdFMXdqTkc1akZ1WGtxUXFIZk1GQzYvbTkzRlRWYjlrcnNT?=
 =?utf-8?B?WmVIS3lzaUhiQnhUTFlodjdmSG1xekZuMlBWSk1lSjUwU09tdVZoeFJNbmNq?=
 =?utf-8?B?Q3RtdnBaZ21aOERUaDFlTHkrT3NVVmJZaitQY0h6NERjb3NINXhVOEFuSG45?=
 =?utf-8?B?QVF0NnVLYm0xKzFhNnBYQmRLenZnanhmbjRCTUg3aFoxYlRLenArZFlhdW5L?=
 =?utf-8?B?NFdpWmtVU3MrUmgzSmRKUmp5bldUN3dVTVJRdUhBdWV2OGhkbFRTSmw2R3Yz?=
 =?utf-8?B?TW4xQzBmb3FoeWFXN01CYkY3Y3ZEbHdJL3ZwMFdDTkJLTkNIZXl5L3NyQ0Jy?=
 =?utf-8?B?bUhIenR0b0xwRkxFc0hrald4clo4Z0k3Q3BvMHdkZnJUQVRpSFFLb2JHdWZV?=
 =?utf-8?B?cE9MNkFwTHlUU2FTWTN0NTJCODBHNGZsblVTUXhteTJBbldZckg1L0xOcEsx?=
 =?utf-8?B?REp3SWcwUEdQY3pHNlgzUnVvQU5uclFnY1VTdDU3R2xRZExWQ3lsdFYxU25U?=
 =?utf-8?B?eHZTdWlVajYrNUlsY2c0cmJPVTVqUWprS0JGbEhmengvV1k0S1V1RFFjRm5j?=
 =?utf-8?B?NzlOWjhFd28rYmJ0VU0vdzRyVGRrY0tlNFZXMEZVWUI1a0lnNFdUdnhjS1pj?=
 =?utf-8?B?ZXo1WEVQUnlRZkpNVHhITkZSM0s3T0RKNGE5eXgzSmhzc0lvMEZuWFNCaHZF?=
 =?utf-8?B?d204emU3SWQ1RU1ySkF1Zk1lVlMyejVTTTNDK0JkV3Y1QVNBT3U1WjkzNDVw?=
 =?utf-8?B?UU1nYWwwT0VMOFhYS2NabkJvb1huZFpiSGdYbkFyNjMrQW5lZnBwakREaW5v?=
 =?utf-8?B?MXdQaDAvSUI4MWNRQ09CS21QaWtPWUJkb3FXd3hCei9DSU9BUENyRkEyMFRG?=
 =?utf-8?B?amJwcVJmaXhNMDVYVnlKWGdwRXBPa1FvVVNNN3RETzlQQTNTVGZzRjJPS0lC?=
 =?utf-8?B?MWRhclBBbU5Td2JrbDkrQVFEN2Y1dG0vUW1vZC9nb1VsNTBVbFVOcGlDUFpy?=
 =?utf-8?B?Y25lWDhSSS9oT0Ywd1hYa29zdm9ON3hWcGxseFpTQm92d1pZdm5hSEw3ZmVC?=
 =?utf-8?B?Wi9yY2d4bHBmWEExODBMclhQbVk0SFFTRFIyWXpxZXVyOS9yczRyMFNZYzR6?=
 =?utf-8?B?Rk9zYlRDK0NkbjByVG1zcXpUanViQlpqSkdiNGNocjg5Y2V4R3lDTS9ucEF4?=
 =?utf-8?B?OG5xUG9lcGhhRWdhVmhldUlnWlJ1MC8xSFA1U3I0QmlYYk9KaXZ3K3RJRWtr?=
 =?utf-8?B?V091djdXZXk0SHRzekc4U084WGlWTEp4aWd0WmlNQWhmOEF6V0FUaEFqZ3dz?=
 =?utf-8?B?cTc3bU05Q0Y3TTVnMzdFcnR1VlhUaXd2TSsvYW5ucElQVnFQc2lhN0VoNFhn?=
 =?utf-8?B?WEFWa1lHeVlWSjFva1lHWWgzWlkvSzlNMEo1RXZzL21UOGZ2TlpkR3RubGNz?=
 =?utf-8?B?b3Q5RFl1bXBhR1VpTWpJK3pTdzA2a2dQUnl2eVR3UVZSKzh5ZzRLTVZzUXk2?=
 =?utf-8?B?M2UxTkNrekdGek5sVXFVZ0E4VktIUUlGYTE4dC94YkdWWXVicks2NFJRa3c4?=
 =?utf-8?B?YnMvbU52R3lFckZWdDc4RkNkQStTRmhoVTJNL1FIMTUzS0hKK0xlbGVicGtx?=
 =?utf-8?B?TTdLdkhnRjBMS1czZWNhNmVZdHhUbFpIK295SkFsKzJOZVJ1SnRtaWJ4amNl?=
 =?utf-8?Q?WQ9iOm7tyXqny27zI+8HYvImA/tQc6ld4lY8cmK?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a7c3d2-bf26-45c8-944f-08d94d7cf6ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2021 01:55:36.1334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8DfgRpA3Ii8BcNxO3ty07y01E346c67eNFxDTHmFiFBLQbHwi/PkKfINPlh9Cqumt7zlmBRIinyv68SNNwUfE/YLsyJYbNPQEKEUd/N0BRg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2192
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.90 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m6kPh-00HObZ-9l
Subject: [tipc-discussion] FW: [syzbot] KASAN: use-after-free Read in
 tipc_recvmsg
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
Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Xin,

I think the issue caused by your patch:

f4919ff59c282 ("tipc: keep the skb in rcv queue until the whole data is read)
<snip>
1976         if (!skb_cb->bytes_read)
1977                 tsk_advance_rx_queue(sk);   <-- skb free-ed here
1978
1979         if (likely(!connected) || skb_cb->bytes_read) <- use-after-free
1980                 goto exit;
</snip>

Can you take a look at the issue.

Thanks,
Hoang
-----Original Message-----
From: syzbot <syzbot+e6741b97d5552f97c24d@syzkaller.appspotmail.com> 
Sent: Monday, July 19, 2021 12:15 AM
To: davem@davemloft.net; devicetree@vger.kernel.org; frowand.list@gmail.com; gregkh@linuxfoundation.org; jmaloy@redhat.com; kuba@kernel.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.org; rafael@kernel.org; robh+dt@kernel.org; robh@kernel.org; syzkaller-bugs@googlegroups.com; tipc-discussion@lists.sourceforge.net; ying.xue@windriver.com
Subject: [syzbot] KASAN: use-after-free Read in tipc_recvmsg

Hello,

syzbot found the following issue on:

HEAD commit:    ab0441b4a920 Merge branch 'vmxnet3-version-6'
git tree:       net-next
console output: https://syzkaller.appspot.com/x/log.txt?x=1744ac6a300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=da140227e4f25b17
dashboard link: https://syzkaller.appspot.com/bug?extid=e6741b97d5552f97c24d
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13973a74300000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17ffc902300000

The issue was bisected to:

commit 67a3156453859ceb40dc4448b7a6a99ea0ad27c7
Author: Rob Herring <robh@kernel.org>
Date:   Thu May 27 19:45:47 2021 +0000

    of: Merge of_address_to_resource() and of_pci_address_to_resource() implementations

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=129b0438300000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=119b0438300000
console output: https://syzkaller.appspot.com/x/log.txt?x=169b0438300000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+e6741b97d5552f97c24d@syzkaller.appspotmail.com
Fixes: 67a315645385 ("of: Merge of_address_to_resource() and of_pci_address_to_resource() implementations")

==================================================================
BUG: KASAN: use-after-free in tipc_recvmsg+0xf77/0xf90 net/tipc/socket.c:1979
Read of size 4 at addr ffff8880328cf1c0 by task kworker/u4:0/8

CPU: 1 PID: 8 Comm: kworker/u4:0 Not tainted 5.14.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: tipc_rcv tipc_conn_recv_work
Call Trace:
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:105
 print_address_description.constprop.0.cold+0x6c/0x309 mm/kasan/report.c:233
 __kasan_report mm/kasan/report.c:419 [inline]
 kasan_report.cold+0x83/0xdf mm/kasan/report.c:436
 tipc_recvmsg+0xf77/0xf90 net/tipc/socket.c:1979
 sock_recvmsg_nosec net/socket.c:943 [inline]
 sock_recvmsg net/socket.c:961 [inline]
 sock_recvmsg+0xca/0x110 net/socket.c:957
 tipc_conn_rcv_from_sock+0x162/0x2f0 net/tipc/topsrv.c:398
 tipc_conn_recv_work+0xeb/0x190 net/tipc/topsrv.c:421
 process_one_work+0x98d/0x1630 kernel/workqueue.c:2276
 worker_thread+0x658/0x11f0 kernel/workqueue.c:2422
 kthread+0x3e5/0x4d0 kernel/kthread.c:319
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295

Allocated by task 8446:
 kasan_save_stack+0x1b/0x40 mm/kasan/common.c:38
 kasan_set_track mm/kasan/common.c:46 [inline]
 set_alloc_info mm/kasan/common.c:434 [inline]
 __kasan_slab_alloc+0x84/0xa0 mm/kasan/common.c:467
 kasan_slab_alloc include/linux/kasan.h:253 [inline]
 slab_post_alloc_hook mm/slab.h:512 [inline]
 slab_alloc_node mm/slub.c:2981 [inline]
 kmem_cache_alloc_node+0x266/0x3e0 mm/slub.c:3017
 __alloc_skb+0x20b/0x340 net/core/skbuff.c:414
 alloc_skb_fclone include/linux/skbuff.h:1162 [inline]
 tipc_buf_acquire+0x25/0xe0 net/tipc/msg.c:72
 tipc_msg_build+0xf7/0x10a0 net/tipc/msg.c:386
 __tipc_sendstream+0x6d0/0x1150 net/tipc/socket.c:1610
 tipc_sendstream+0x4c/0x70 net/tipc/socket.c:1541
 sock_sendmsg_nosec net/socket.c:703 [inline]
 sock_sendmsg+0xcf/0x120 net/socket.c:723
 sock_write_iter+0x289/0x3c0 net/socket.c:1056
 call_write_iter include/linux/fs.h:2114 [inline]
 new_sync_write+0x426/0x650 fs/read_write.c:518
 vfs_write+0x75a/0xa40 fs/read_write.c:605
 ksys_write+0x1ee/0x250 fs/read_write.c:658
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae

Freed by task 8:
 kasan_save_stack+0x1b/0x40 mm/kasan/common.c:38
 kasan_set_track+0x1c/0x30 mm/kasan/common.c:46
 kasan_set_free_info+0x20/0x30 mm/kasan/generic.c:360
 ____kasan_slab_free mm/kasan/common.c:366 [inline]
 ____kasan_slab_free mm/kasan/common.c:328 [inline]
 __kasan_slab_free+0xfb/0x130 mm/kasan/common.c:374
 kasan_slab_free include/linux/kasan.h:229 [inline]
 slab_free_hook mm/slub.c:1650 [inline]
 slab_free_freelist_hook+0xdf/0x240 mm/slub.c:1675
 slab_free mm/slub.c:3235 [inline]
 kmem_cache_free+0x8e/0x5a0 mm/slub.c:3251
 kfree_skbmem+0x166/0x1b0 net/core/skbuff.c:709
 __kfree_skb net/core/skbuff.c:745 [inline]
 kfree_skb net/core/skbuff.c:762 [inline]
 kfree_skb+0x140/0x3f0 net/core/skbuff.c:756
 tipc_recvmsg+0x70d/0xf90 net/tipc/socket.c:1977
 sock_recvmsg_nosec net/socket.c:943 [inline]
 sock_recvmsg net/socket.c:961 [inline]
 sock_recvmsg+0xca/0x110 net/socket.c:957
 tipc_conn_rcv_from_sock+0x162/0x2f0 net/tipc/topsrv.c:398
 tipc_conn_recv_work+0xeb/0x190 net/tipc/topsrv.c:421
 process_one_work+0x98d/0x1630 kernel/workqueue.c:2276
 worker_thread+0x658/0x11f0 kernel/workqueue.c:2422
 kthread+0x3e5/0x4d0 kernel/kthread.c:319
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295

The buggy address belongs to the object at ffff8880328cf180
 which belongs to the cache skbuff_fclone_cache of size 472
The buggy address is located 64 bytes inside of
 472-byte region [ffff8880328cf180, ffff8880328cf358)
The buggy address belongs to the page:
page:ffffea0000ca3380 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x328ce
head:ffffea0000ca3380 order:1 compound_mapcount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000010200 ffffea0000811500 0000000300000003 ffff8881400ee280
raw: 0000000000000000 00000000800c000c 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 1, migratetype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC), pid 8424, ts 65082628156, free_ts 64879784131
 prep_new_page mm/page_alloc.c:2433 [inline]
 get_page_from_freelist+0xa72/0x2f80 mm/page_alloc.c:4166
 __alloc_pages+0x1b2/0x500 mm/page_alloc.c:5374
 alloc_pages+0x18c/0x2a0 mm/mempolicy.c:2244
 alloc_slab_page mm/slub.c:1713 [inline]
 allocate_slab+0x32b/0x4c0 mm/slub.c:1853
 new_slab mm/slub.c:1916 [inline]
 new_slab_objects mm/slub.c:2662 [inline]
 ___slab_alloc+0x4ba/0x820 mm/slub.c:2825
 __slab_alloc.constprop.0+0xa7/0xf0 mm/slub.c:2865
 slab_alloc_node mm/slub.c:2947 [inline]
 kmem_cache_alloc_node+0x12c/0x3e0 mm/slub.c:3017
 __alloc_skb+0x20b/0x340 net/core/skbuff.c:414
 alloc_skb_fclone include/linux/skbuff.h:1162 [inline]
 sk_stream_alloc_skb+0x109/0xc30 net/ipv4/tcp.c:887
 tcp_sendmsg_locked+0xc78/0x2f10 net/ipv4/tcp.c:1309
 tcp_sendmsg+0x2b/0x40 net/ipv4/tcp.c:1461
 inet_sendmsg+0x99/0xe0 net/ipv4/af_inet.c:821
 sock_sendmsg_nosec net/socket.c:703 [inline]
 sock_sendmsg+0xcf/0x120 net/socket.c:723
 sock_write_iter+0x289/0x3c0 net/socket.c:1056
 call_write_iter include/linux/fs.h:2114 [inline]
 new_sync_write+0x426/0x650 fs/read_write.c:518
 vfs_write+0x75a/0xa40 fs/read_write.c:605
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1343 [inline]
 free_pcp_prepare+0x2c5/0x780 mm/page_alloc.c:1394
 free_unref_page_prepare mm/page_alloc.c:3329 [inline]
 free_unref_page+0x19/0x690 mm/page_alloc.c:3408
 unfreeze_partials+0x17c/0x1d0 mm/slub.c:2443
 put_cpu_partial+0x13d/0x230 mm/slub.c:2479
 qlink_free mm/kasan/quarantine.c:146 [inline]
 qlist_free_all+0x5a/0xc0 mm/kasan/quarantine.c:165
 kasan_quarantine_reduce+0x180/0x200 mm/kasan/quarantine.c:272
 __kasan_slab_alloc+0x8e/0xa0 mm/kasan/common.c:444
 kasan_slab_alloc include/linux/kasan.h:253 [inline]
 slab_post_alloc_hook mm/slab.h:512 [inline]
 slab_alloc_node mm/slub.c:2981 [inline]
 slab_alloc mm/slub.c:2989 [inline]
 kmem_cache_alloc+0x216/0x3a0 mm/slub.c:2994
 getname_flags.part.0+0x50/0x4f0 fs/namei.c:138
 getname_flags fs/namei.c:2747 [inline]
 user_path_at_empty+0xa1/0x100 fs/namei.c:2747
 user_path_at include/linux/namei.h:57 [inline]
 vfs_statx+0x142/0x390 fs/stat.c:203
 vfs_fstatat fs/stat.c:225 [inline]
 vfs_lstat include/linux/fs.h:3386 [inline]
 __do_sys_newlstat+0x91/0x110 fs/stat.c:380
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae

Memory state around the buggy address:
 ffff8880328cf080: fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc fc
 ffff8880328cf100: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff8880328cf180: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                           ^
 ffff8880328cf200: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8880328cf280: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
