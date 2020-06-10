Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8351F4AFA
	for <lists+tipc-discussion@lfdr.de>; Wed, 10 Jun 2020 03:39:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jiphm-0000jW-Uv; Wed, 10 Jun 2020 01:39:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jiphm-0000jL-9v
 for tipc-discussion@lists.sourceforge.net; Wed, 10 Jun 2020 01:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=unY/0LZuylN/aQYpgxqnOGbbSGTU4mqvQwm5FDV5t0I=; b=RRVuXrNzRkA0Mpf/0XaSB0VJYA
 J5ufmq9owFlhAHOvZAgVkXmPpXId5Ww7vEetfwCJuRB/qSdc52ffRiO0RXwsnoNBPAO8f4cxbpEom
 7gKnosTDE/FjuE/+deGFg2xYOe7p7frOWpJij7JZx4PakfoJylNQGzhbssQOBTPr+R7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=unY/0LZuylN/aQYpgxqnOGbbSGTU4mqvQwm5FDV5t0I=; b=lIRkqk+y9h6Dnz8CPUe4RlDOcl
 tgVZh5HuV7eefr4q7xJW8Z1iMjrjltxZC6CHGfnWYOe8db4LP750S72vYjPdiK/nj3j2UUQ5ORLEW
 SLAgM4UoB9pkHdzqmXoZrlyTMU9NrOXgB5ztB9GCVzjhKTtij8AhdHAVF9rfBzofYw4g=;
Received: from mail-eopbgr140112.outbound.protection.outlook.com
 ([40.107.14.112] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jiphi-00FDmo-0d
 for tipc-discussion@lists.sourceforge.net; Wed, 10 Jun 2020 01:39:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4P0DkjdFGnhhreGGtKe4FQjh/eowTL3ipvEj8dYP6mbi9JPInlZncf8mfCAskjRVIT6kqXANu3ct9f47ANLdw0avSB0ITTTbJIN0nyJRNcbrVWjprxnYkqml8CxvLcOzGKEh5Ku5MVhO3tw1/PpVOkV38aVeuMdQGpVbGNieEDpx88f3NUi3pPcU/ZjcXY0RH7fsi1w3lF7hWepo/1UngAHWswQgYl/VSV+rbfr3wTrUCHQRI1i8iKSFXk9hpQncJtWrtiCF6zV7kfkG9c5h4ugdezaaxxYypfC9dKNoLPnJf/yoVr6IjyhNgNK7XYmC/u4mjbHTU/fPOmtEnm/ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=unY/0LZuylN/aQYpgxqnOGbbSGTU4mqvQwm5FDV5t0I=;
 b=HtMRc/Lj1me8HboYB0HeTjNupSjf4uR4/TZzywF5sZPhRDCpnycpFt05n80QSH1uRNX52N60djBRNa9Umb0w6pKFJdYQFOG6f39WU1lFs5mu20nyhcGCwjxrZFX5qHdkJDZjAkXaEzFI0SVnp5I2Vr0aXoz+fagN0RiKpMCZm+02lXRGco+eDDN2tIugq7l9P+k7mrJAcHj8wR+qgpON3LwHVu+QI5vsI/6ujAMUb7YL0YgQN7oCq6jWMRdD8roxfIdAajlPdCB91VKphB/LoDRdCTR/bsjRM3aSsk6m0BK2oInDOwRwMBn1YAHqMA+hnkKhNfONjUEdVzwKyBpErQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=unY/0LZuylN/aQYpgxqnOGbbSGTU4mqvQwm5FDV5t0I=;
 b=jkX+RRf2pgbSvwD+JgvbIjQWSXDoMF9zCYbA9EkPxox98F8zm4KthOPf4PfJn6TwlN8ira+McguMxkfqj3hMESq+zOXLqFpko32EYyAsYVnRQlNtJzxBuLAAzLXpLz0sgOU9CXFrYTWNmfSvCagh8vrFZvnwqPRCj2abAAhi5SQ=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4087.eurprd05.prod.outlook.com (2603:10a6:209:1e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Wed, 10 Jun
 2020 01:38:47 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::4d5f:2ab:5a66:deaf%7]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 01:38:47 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net] tipc: fix kernel WARNING in tipc_msg_append()
Thread-Index: AQHWPhHTLm1lSXdIokOpYfQFneaiY6jQRSKAgADNlkA=
Date: Wed, 10 Jun 2020 01:38:47 +0000
Message-ID: <AM6PR0502MB3925D987701ECCB93151C604E2830@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200609035520.28571-1-tuong.t.lien@dektech.com.au>
 <42697551-e1eb-7831-8f6b-77ac8ae162e8@redhat.com>
In-Reply-To: <42697551-e1eb-7831-8f6b-77ac8ae162e8@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd0aa1b1-2b78-4c97-96c1-08d80cdf050c
x-ms-traffictypediagnostic: AM6PR0502MB4087:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB40878F0B07FC4BB6B192E681E2830@AM6PR0502MB4087.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QXJI2cDOZim1iaHA5aA3lo3clC22aq9QJCYXPNgPfOsenWtosUAaqBjPzDFyRf5SY1cgTaR6AfCuJ/R/i3l154coZYkXnsP8Cbgv3xTD0TNNV6X3x5AnLjBTgxcJEBIHHmXCUwuctHp/y7AOVIBySNIbVuHkHo6g2fK9cG31CrzPqG8BMpplfLRqd07nr6Ez7rjVzNGPW+HdMwOGc0lIm4jZHKLDPpVWWzvyWaZYJp79RPzpPzjKpIPICQrYOqVYdqi1CP+TltfHYcWEflP+6nMKJpxty2bPlG5rG6ozXylMG5f52s1ZOIBJGQvCF0JCzTAmYqhrgPfxUEMWyXkUww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(39840400004)(376002)(346002)(366004)(52536014)(478600001)(83380400001)(71200400001)(8676002)(33656002)(76116006)(66446008)(64756008)(66556008)(66946007)(2906002)(66476007)(86362001)(4326008)(7696005)(6506007)(53546011)(26005)(55016002)(107886003)(5660300002)(186003)(9686003)(110136005)(316002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: M6I4J8YsXv5azHEMAjmiV5GOzMhEl0uR/R8Yzo05sWr+JAYw/tcRsLFevmZK+gD8wA3tYocz/NoX/9sCyLtkNZ/5eng5i7326xhDQCS0ncLeOWESRR1mCAL9Of1PS2U/2G23W8pgbyn7oxZ/fcYvkkfIxEm0F6/4AkLVKUNz91wbuwPVJulON+5h7cv7003l9kYzDo8FkbdW3DCzQHWAJddd61UK7KZHuMfsA86dch0pjPlHQb4dfapENfA4wRRRCVP9Qp4MwX0oix7DY2dmKD+oyK5QH5Vy+um7DlOcRyXfFGL1B4JK+32zO83c067SjblyGYGso2l72R4HNxIV7rg3A+MH5fTD2C46XCCxzXpp3pLM0/w9sxxCf7ErHTcrtgvgfloGlex+Vehlf4hA3027EgLI8MZ+iz34GPuTRF6rOfZa2dep0iVSxCbt9bduBB0ltuFabry00RLBMbWnChKCGwZTAlgXOyYIC9pwpxk=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: bd0aa1b1-2b78-4c97-96c1-08d80cdf050c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 01:38:47.3627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cJ7LZYT6eVzqFQsRxRqlQP7PsOTSZneuP0tMBcDa7Bv2jdwb4WhuAfg3zIcdMiq49//SlEB3NBAYZgV6oXk9sPz+d52I1ejRIZP/KjWVm58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4087
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.112 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jiphi-00FDmo-0d
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
> Sent: Tuesday, June 9, 2020 8:20 PM
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; maloy@donjonn.com; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Cc: tipc-dek <tipc-dek@dektech.com.au>
> Subject: Re: [net] tipc: fix kernel WARNING in tipc_msg_append()
> 
> 
> 
> On 6/8/20 11:55 PM, Tuong Lien wrote:
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
> ---
> Same suggestion as I had to Hoang; add the three dashes above to avoid that
> the version info by accident becomes part of the commit log.
Thanks Jon, I usually remove it before posting it to netdev as well.

BR/Tuong
> >
> > v2: use 'size_t' in the 'min_t()' to get a proper value of 'cpy' (after
> >      Jon's comment)
> >
> > Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
> > Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> > Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> > ---
> >   net/tipc/msg.c    | 4 ++--
> >   net/tipc/socket.c | 3 ++-
> >   2 files changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> > index 046e4cb3acea..01b64869a173 100644
> > --- a/net/tipc/msg.c
> > +++ b/net/tipc/msg.c
> > @@ -238,14 +238,14 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
> >   		hdr = buf_msg(skb);
> >   		curr = msg_blocks(hdr);
> >   		mlen = msg_size(hdr);
> > -		cpy = min_t(int, rem, mss - mlen);
> > +		cpy = min_t(size_t, rem, mss - mlen);
> >   		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
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
> >   			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
> >   			if (unlikely(rc < 0))
> >   				break;
> Acked-by: Jon Maloy <jmaloy@redhat.com>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
