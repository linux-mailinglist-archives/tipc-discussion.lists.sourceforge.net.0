Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C58C517D9
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 18:01:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfROz-0000hS-4P; Mon, 24 Jun 2019 16:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1hfROj-0000dx-M2
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 16:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YdRzxe6Q+zn/5xTeZGYYejalAGDTIZM+YjpMFef3Ko8=; b=M+EPN9fHsxvcUQfqcK6GAp1aBr
 8gIhWWDqcC+8MfdK1swkgdazmzUGdfGPFKBQw2Pb+Pa+mCIyhadCUG/VkUJS5WpOJriZF4y+VgLBM
 8FeqxKvirrMOEKlS0hd5aYitb3+dQPPlHvaMaU4w2BIDHtDPlXfHu0KHSmFQea2sIcQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YdRzxe6Q+zn/5xTeZGYYejalAGDTIZM+YjpMFef3Ko8=; b=e0CoSMFJEZqScKqgCW1e9iV+7B
 /VSnIsV22gVBm1RAPbhmN13ISnn5vMz6xVmNrZYMIVa9CohmD16AtTF//Z/qYPrEkhrUCi1dmjbyj
 SQuh8TUwmbLRh4Cbizd+rFmvX7qGW0BvWwyPhcCIpDqH/loI62yZm+Sc9Fwf9njg0bl8=;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfROq-00CF5i-Lj
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 16:00:58 +0000
Received: by mail-wr1-f67.google.com with SMTP id r16so14470501wrl.11
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 24 Jun 2019 09:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YdRzxe6Q+zn/5xTeZGYYejalAGDTIZM+YjpMFef3Ko8=;
 b=FP9JiPX7ih+dikuyHy3L/OqPtKBjsumovXYh2kCCy7owOPTtjTb88uO94MHyuYGVqt
 VvLHXnX9/uHyRp21hmLyFpJbfn4P+z+H+dZYZqgybjBTa5+Ov2gKNtIYAogQ3MnplH38
 dI8praVIsJ7r2/R5zYHe99PWKkmJ6/fqXyj0bxAJVYQbumZzsy/2kEUdXuGTrhJlRfc4
 hj6HF2gwOvfmwp8OThxLbRke/lKqghQS8wcNmXYOnQPRf1vVSoyvcm54VmokZ0iHDf4o
 yl0oNLZeXkORGwmDKkhvL1zENBp9z378FJUetO2Hmgqeyt5YhcLvyDTooOAogimFGKF4
 W1Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YdRzxe6Q+zn/5xTeZGYYejalAGDTIZM+YjpMFef3Ko8=;
 b=QVGBvcrkMOcGoSBws3VUmvCBUCJpqcu51PH4CexEiDzP2YXguP40Wjyto/aVk16dVa
 WHtQJsA5dnNQ5p1/8YokfF7emUElsfm9uuxK5S/Z7+pO0tZqosgAQiTqiC3+Za75ExPF
 1ShOC+E8OpkV1z6gx+q/xbpuLGC5UgG2qVPpAj7vTSOLosNL4qfjxSzD7FJkxEl51QKr
 GMyAD/eVYPC7c0QKVRIEzMM5js+0EbVuNXOZOa7CI9HL/fzQlxcU+qBj0VPoMImfgRDl
 zuRqDhIjOE0vWassyucyRQDJgxIgd7wIYvIzljiVT1c61RU8LyQy2Oy+5qFVE4jiMGqo
 k5nQ==
X-Gm-Message-State: APjAAAWdgRUWDiQVCEDKhXl32fdeL2hrdkcKqGpXyxQUW+/MoSZarEgQ
 0k2jrXLawyWqd/YxIRzkMaGqsfBZ2H1EU/BsuxY=
X-Google-Smtp-Source: APXvYqyldwXao3D0pyTSXGcRgmWbJSvetdJ7B+NCHDKt/p5lw0hHshQTnPsxXiijYECAcWNe4PW77naikfdDmMgmImM=
X-Received: by 2002:adf:fb81:: with SMTP id a1mr25254311wrr.329.1561392050126; 
 Mon, 24 Jun 2019 09:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <4fd888cb669434b00dce24ace4410524665be285.1561363146.git.lucien.xin@gmail.com>
 <061d3bd2-46a2-04aa-a3f7-3091e6ff8523@gmail.com>
In-Reply-To: <061d3bd2-46a2-04aa-a3f7-3091e6ff8523@gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 25 Jun 2019 00:00:39 +0800
Message-ID: <CADvbK_dSghWbMtmpH+oMpW=0CsSU-usjQ=_nZw2qkgQ0iEuH+A@mail.gmail.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfROq-00CF5i-Lj
Subject: Re: [tipc-discussion] [PATCH net] tipc: check msg->req data len in
 tipc_nl_compat_bearer_disable
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
Cc: network dev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 tipc-discussion@lists.sourceforge.net, davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Mon, Jun 24, 2019 at 4:33 PM Eric Dumazet <eric.dumazet@gmail.com> wrote:
>
>
>
> On 6/24/19 12:59 AM, Xin Long wrote:
> > This patch is to fix an uninit-value issue, reported by syzbot:
> >
> >   BUG: KMSAN: uninit-value in memchr+0xce/0x110 lib/string.c:981
> >   Call Trace:
> >     __dump_stack lib/dump_stack.c:77 [inline]
> >     dump_stack+0x191/0x1f0 lib/dump_stack.c:113
> >     kmsan_report+0x130/0x2a0 mm/kmsan/kmsan.c:622
> >     __msan_warning+0x75/0xe0 mm/kmsan/kmsan_instr.c:310
> >     memchr+0xce/0x110 lib/string.c:981
> >     string_is_valid net/tipc/netlink_compat.c:176 [inline]
> >     tipc_nl_compat_bearer_disable+0x2a1/0x480 net/tipc/netlink_compat.c:449
> >     __tipc_nl_compat_doit net/tipc/netlink_compat.c:327 [inline]
> >     tipc_nl_compat_doit+0x3ac/0xb00 net/tipc/netlink_compat.c:360
> >     tipc_nl_compat_handle net/tipc/netlink_compat.c:1178 [inline]
> >     tipc_nl_compat_recv+0x1b1b/0x27b0 net/tipc/netlink_compat.c:1281
> >
> > TLV_GET_DATA_LEN() may return a negtive int value, which will be
> > used as size_t (becoming a big unsigned long) passed into memchr,
> > cause this issue.
> >
> > Similar to what it does in tipc_nl_compat_bearer_enable(), this
> > fix is to return -EINVAL when TLV_GET_DATA_LEN() is negtive in
> > tipc_nl_compat_bearer_disable(), as well as in
> > tipc_nl_compat_link_stat_dump() and tipc_nl_compat_link_reset_stats().
> >
> > Reported-by: syzbot+30eaa8bf392f7fafffaf@syzkaller.appspotmail.com
> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
>
> Please add an appropriate Fixes: tag, thanks !
>
Fixes: 0762216c0ad2 ("tipc: fix uninit-value in tipc_nl_compat_bearer_enable")
Fixes: 8b66fee7f8ee (:tipc: fix uninit-value in
tipc_nl_compat_link_reset_stats")

Sorry, David, do I need to resend this one?


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
