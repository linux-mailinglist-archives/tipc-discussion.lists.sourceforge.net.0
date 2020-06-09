Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A5A1F328E
	for <lists+tipc-discussion@lfdr.de>; Tue,  9 Jun 2020 05:28:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jiUvv-0007QB-Tf; Tue, 09 Jun 2020 03:28:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jiUvu-0007Q3-9P
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 03:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4yTp5bM5KvJ1ieJpjln5zVrYQaICOvHGP68qdW9td+g=; b=OpYBbZy2qTBz3RFImNQguCvqM6
 3r6JnTkg5TMrohluGf0QyUGnykuTqN0Aa4858N2SAbMl8/cY6BLHB/yeRTWSxjGZhy284FCC/CbcD
 KLooyKyclQPLv/Ze+PI4Sn3tmt5AfPp8syMXBX7owX/iKPdlnvtnbV8pAyHdpGMOSap0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4yTp5bM5KvJ1ieJpjln5zVrYQaICOvHGP68qdW9td+g=; b=WFoOz90DIQwXOGjq2t0+UGOkro
 SqJMrhSM4rTpZZFeG0L3Hg37OX8iZMJr6+3KC1AgvRXDEtyPQtQNjdgXkBC2vImckVZPWJQQ/Tbl+
 Atj1cyvyUjtqDTmXmmKE8F812ETN8miJk9usH9TtubxGF5oajjIjC9T5NfdElTZYyCOw=;
Received: from mail-eopbgr130139.outbound.protection.outlook.com
 ([40.107.13.139] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jiUvn-00H9Ry-6F
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 03:28:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IvctbbqDl2Ox1GjuAAL6OYig6z4HtvkA8saMi3iOObO3wKcZCeJhuOILSZAhDQaNAqQlDgEG5A9bmE9sPqdh/d0LD4A4F4I1Nn+rZa066mRRkFJM+4OK966Hn7ArH6mSzxIUhpgSQ9IcvytezuxnlTPcbtEQ6KsBpIo5dvKQvs3nMd2pDDS9dZg+WaPwrjhZhZfcOtmgiWKa82lfat0vQhwBQl1QKQXcH6e71fXICwkc1Dqgn/kEWI83Yt5K8qGcK0wRNMSmHycZKI154g1bHdDxqj9hAaiDrwi1IP031jyR/2bRnK0iZzupjtZdj+pCAfxY3WU7BhWGfl6i4pjozA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4yTp5bM5KvJ1ieJpjln5zVrYQaICOvHGP68qdW9td+g=;
 b=myaD2CS3YQS+rJrUO8ls+uL3r1iPfL5d3vFFk3pKaq+LVsYuc2W1OOmtjy5gjEqr3QeIOn2HIf4BWEgx6mTqzPuOfrz5x6m5BywkyZ464jwHcaJW3YwJZzPvmaonsnrr90SjRafaqrJIJoRoXtVHYGw3K0vMBIl3J3MpTVXg2QUbBgbX8JX5CDjqKIQiAB7bz0PnDDy9+MPtabi3KvG2hVd/IJSboYdVK8hu1VL6/2rg6Dmeas5+fCEO2hyHktEBDHADmPSgXiZ67+CIB10CxXDbH4g0aJqKDCBZQdtYZ3M49h9VeMYibync6yqzTM1q0o/DWAZQ8ooIb06xMHkOAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4yTp5bM5KvJ1ieJpjln5zVrYQaICOvHGP68qdW9td+g=;
 b=q446W238Fqj0IGgO3QV111JYIe49wE4EqxlTPorENHU74Vt32sUQ6SvQ27H2I75waiX84399p6nPnqYb3OQ8xzwNl5A2PfWonqnGH8epJNMuWrj3w7oQlDoN8XwpHSy0xgfT5gqReV+g+5dEcgcpCTR0fjVxi1IeF1K6IAJV+iw=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB3654.eurprd05.prod.outlook.com (2603:10a6:209:9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Tue, 9 Jun
 2020 03:27:51 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 03:27:51 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net] tipc: fix kernel WARNING in tipc_msg_append()
Thread-Index: AQHWPY0i775fxcnatU6cCdAH60h7cKjOseeAgADqulA=
Date: Tue, 9 Jun 2020 03:27:51 +0000
Message-ID: <AM6PR0502MB3925DEFF24C2F9F3A23733D8E2820@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200608120530.20690-1-tuong.t.lien@dektech.com.au>
 <d42fb931-1bd4-a67d-2de3-ca02adc769dd@redhat.com>
In-Reply-To: <d42fb931-1bd4-a67d-2de3-ca02adc769dd@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edf79480-476b-4d21-ef0b-08d80c25174e
x-ms-traffictypediagnostic: AM6PR0502MB3654:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB3654573304E7DB77E304CF41E2820@AM6PR0502MB3654.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GA8WXlB9/nwJ90BcitrF5GJ8Q3dXyA2mwww+S5zyyNcP0opY+VW7y5XOthxJe6hpIzOeWuDMh3srbIH55X1I6ZDZ1Ur+iqWtgUnIzSmqlYwiGD88Y13b0yJMx6Jo/Z1nwE76toEsWbD6NVg1pb3dpE8wzeaVDQkYsK6TKRWRhZKl9YfZNmrJCo3LrXwPgTlt07AwgTtmVQEmNsoXtWjbukrye+ZryaYjFs5GxcsDG3LfNHDVuQjIOmMipSNyBVimoEqSwmQF2HfhXeYynT26x87P2fZ4dd2Wf/3k99Eia7MZ1hMmKp94D83H+v21HW0e+7x22F12akOPvxJLRRk2Iw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(346002)(39850400004)(396003)(366004)(71200400001)(7696005)(52536014)(5660300002)(86362001)(8676002)(6506007)(83380400001)(8936002)(4326008)(110136005)(107886003)(53546011)(33656002)(2906002)(9686003)(66476007)(186003)(316002)(26005)(66446008)(478600001)(66946007)(64756008)(76116006)(55016002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dqENipHOUEI0VraM/qq0sL0CswwffJGC9dDyG/S3KsTo8KFT5frEVrRiceCIpGiCVdWu1ADOX7U0s2cy7Qajp/IpiDgHcOgsPB7V42I5o1qFZNKepnzLU+jhjWMIA63j1ZJv6kXmK7Sd3ifnFnNP6YmK65qNBkBCuIkTf7YLcC7zXRvRpzBgi4Ycb1VUeREgFPJ/5eciMIWPdljdQJgvsv5kc1udV4XcSWxnFFK+nmPpLlvX8/ncZCY57stLB4DeFXVY8sYcm/De8X+PIA2OREMTPnR00Sn1R7TzuZsew6DLImsa86O19eRdHheEMoroxpKy0o0huYN/pjdl4f7CVjOMqkErO5KMuNuQsf2lHLHu8ksYLdizmx6VqVG+U9ak4Ct07L4XWNx2SAbDskArFUQFMe4teUvZuMsXX5DPWh0MXxluWfP18zKxT7I1GT4NGCzSdShui2RstTDDD3wseY2NlboKUf0B4H9mPc4w21w=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: edf79480-476b-4d21-ef0b-08d80c25174e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 03:27:51.5238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hPJfEGzVtGPDfrQo8lG3Sir4lcgNTxkPRv/gN7ag0b5Y6kGbuA91A31e2JFBxSeVDzGfwaY+lNsRlfoD2UciXKq2fuyYMh8p1fIKLOKKii8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3654
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.139 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jiUvn-00H9Ry-6F
Subject: Re: [tipc-discussion] [net] tipc: fix kernel WARNING in
 tipc_msg_append()
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Monday, June 8, 2020 8:13 PM
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Cc: tipc-dek <tipc-dek@dektech.com.au>
> Subject: Re: [net] tipc: fix kernel WARNING in tipc_msg_append()
> 
> 
> 
> On 6/8/20 8:05 AM, Tuong Lien wrote:
> > syzbot found the following issue:
> >
> > WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 check_copy_size include/linux/thread_info.h:150 [inline]
> > WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 copy_from_iter include/linux/uio.h:144 [inline]
> > WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 tipc_msg_append+0x49a/0x5e0 net/tipc/msg.c:242
> > Kernel panic - not syncing: panic_on_warn set ...
> >
> > This happens after commit 5e9eeccc58f3 ("tipc: fix NULL pointer
> > dereference in streaming") that tried to build at least one buffer even
> > when the message data length is zero... However, it now exposes another
> > bug that the 'mss' can be zero and the 'cpy' will be negative, thus the
> > above kernel WARNING will appear!
> > The zero value of 'mss' is never expected because it means Nagle is not
> > enabled for the socket (actually the socket type was 'SOCK_SEQPACKET'),
> > so the function 'tipc_msg_append()' must not be called at all. But that
> > was in this particular case since the message data length was zero, and
> > the 'send <= maxnagle' check became true.
> >
> > We resolve the issue by explicitly checking if Nagle is enabled for the
> > socket, i.e. 'maxnagle != 0' before calling the 'tipc_msg_append()'. In
> > addition, we put a sanity check in the function to avoid calling the
> > 'copy_from_iter()' with a negative size and doing an infinite loop.
> >
> > Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
> > Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> > Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> > ---
> >   net/tipc/msg.c    | 5 +++--
> >   net/tipc/socket.c | 3 ++-
> >   2 files changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> > index 046e4cb3acea..ea3ebf35e0c2 100644
> > --- a/net/tipc/msg.c
> > +++ b/net/tipc/msg.c
> > @@ -239,13 +239,14 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
> >   		curr = msg_blocks(hdr);
> >   		mlen = msg_size(hdr);
> >   		cpy = min_t(int, rem, mss - mlen);
> > -		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
> > +		if (cpy < 0 ||
> You can probably just redeclare cpy (and mlen, rem) to u32 here.
> ///jon
Yes, it should be 'unsigned', but the actual issue here is overflow, so if we use u32, we will still need to check if not > INT_MAX... Instead, I think we can just change the data type at the 'min_t()', such as:
	cpy = min_t(unsinged int, rem, mss - mlen);
Do you agree?

> > +		    cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
> >   			return -EFAULT;
> >   		msg_set_size(hdr, mlen + cpy);
> >   		skb_put(skb, cpy);
> >   		rem -= cpy;
> >   		total += msg_blocks(hdr) - curr;
> > -	} while (rem);
> > +	} while (rem > 0);
> >   	return total - accounted;
> >   }
> >
> > diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> > index 26123f4177fd..a94f38333698 100644
> > --- a/net/tipc/socket.c
> > +++ b/net/tipc/socket.c
> > @@ -1574,7 +1574,8 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
> >   			break;
> >   		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
> >   		blocks = tsk->snd_backlog;
> > -		if (tsk->oneway++ >= tsk->nagle_start && send <= maxnagle) {
> > +		if (tsk->oneway++ >= tsk->nagle_start && maxnagle &&
> > +		    send <= maxnagle) {
How about this? I believe this is a must because we never want to do Nagle stuffs for a non-Nagle socket (like SOCK_SEQPACKET).

> >   			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
> >   			if (unlikely(rc < 0))
> >   				break;


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
